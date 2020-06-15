use std::env;
use std::io::{Error, Result};
use std::process;
use std::time::Duration;
use std::{convert::TryInto, mem::size_of};

use libc::{clock_gettime, timespec, CLOCK_PROCESS_CPUTIME_ID};
use text_io::try_read;

mod composition;
use composition::PermT;
mod composition_naive;
use composition_naive::composition_naive;
mod composition_cooperman_ma;
use composition_cooperman_ma::{composition_cooperman_ma, CACHE_SIZE};

static USAGE: &str = "Usage: ./permutation_composition <algorithm:naive/cooperman_ma> 
    cache_size if alrogithm=cooperman_ma) (iterations)";

// From stdin inputs a positive number n, and two permutations x & y of size n.
// The composition of these two permutations z=xy is printed to stdout.
// The input and output format is described in README.md.
fn main() {
    // Don't print error message on broken pipe.
    unsafe {
        libc::signal(libc::SIGPIPE, libc::SIG_DFL);
    }

    // Parse command line arguments
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        eprintln!("Please enter an algorithm to use.");
        println!("{}", USAGE);
        process::exit(1);
    }
    let mut i = 1;
    type Composition = fn(usize, &[PermT], &[PermT], &mut [PermT]);
    let composition: Composition;
    match args[i].as_str() {
        "naive" => {
            composition = composition_naive;
            i = i + 1;
        }
        "cooperman_ma" => {
            composition = composition_cooperman_ma;
            i = i + 1;
            if args.len() > i {
                unsafe {
                    CACHE_SIZE = match args[i].parse::<usize>() {
                        Ok(num) => num,
                        Err(e) => {
                            eprintln!("Invalid cache size: {}", e);
                            process::exit(1);
                        }
                    };
                }
                i = i + 1;
            }
        }
        _ => {
            eprintln!("Invalid algorithm.");
            process::exit(1);
        }
    }
    let iterations: u64;
    if args.len() > i {
        iterations = match args[i].parse::<u64>() {
            Ok(num) => num,
            Err(e) => {
                eprintln!("Invalid iteraions: {}", e);
                process::exit(1);
            }
        };
    } else {
        iterations = 1;
    }

    // Parse permutations x & y from stdin
    let n: usize = match try_read!() {
        Ok(num) => num,
        Err(e) => {
            eprintln!("Invalid input n: {}", e);
            process::exit(1);
        }
    };
    if n < 1 {
        eprintln!("Please enter n greater or equal to 1");
        process::exit(1);
    }
    let max_n: u128 = 2u128.pow((size_of::<PermT>() * 8).try_into().unwrap());
    if max_n <= n.try_into().unwrap() {
        eprintln!("Please enter n less than {}\n", max_n);
        process::exit(1);
    }
    let cpu_time;
    let mut z: Vec<PermT> = vec![0; n];
    {
        // Vectors stored on the heap
        let mut x: Vec<PermT> = vec![0; n];
        let mut y: Vec<PermT> = vec![0; n];
        for i in 0..n {
            x[i] = match try_read!() {
                Ok(num) => num,
                Err(e) => {
                    eprintln!("Invalid input x[{}]: {}", i, e);
                    process::exit(1);
                }
            };
            if x[i] >= n.try_into().unwrap() {
                eprintln!(
                    "Invalid input: read index x[{}]={} not less than n={}",
                    i, x[i], n
                );
                process::exit(1);
            }
        }
        for i in 0..n {
            y[i] = match try_read!() {
                Ok(num) => num,
                Err(e) => {
                    eprintln!("Invalid input y[{}]: {}", i, e);
                    process::exit(1);
                }
            };
            if y[i] >= n.try_into().unwrap() {
                eprintln!(
                    "Invalid input: read index y[{}]={} not less than n={}",
                    i, y[i], n
                );
                process::exit(1);
            }
        }

        // Time permutation composition
        let start_cpu_time = get_cpu_time().expect("Failed to get CPU start time");
        for _ in 0..iterations {
            composition(n, &x, &y, &mut z);
        }
        let end_cpu_time = get_cpu_time().expect("Failed to get CPU end time");
        cpu_time = end_cpu_time.checked_sub(start_cpu_time).unwrap();
    }
    let cpu_time_ns = cpu_time.as_nanos();
    println!("{}", cpu_time_ns);

    // Print z=xy to stdout
    print!("{}", z[0]);
    for i in 1..n {
        print!(" {}", z[i]);
    }
    println!();
}

fn get_cpu_time() -> Result<Duration> {
    let mut time = timespec {
        tv_sec: 0,  // seconds
        tv_nsec: 0, // nanoseconds
    };
    if unsafe { clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &mut time) } == -1 {
        return Err(Error::last_os_error());
    }
    Ok(Duration::new(time.tv_sec as u64, time.tv_nsec as u32))
}

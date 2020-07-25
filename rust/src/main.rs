#![allow(
    clippy::many_single_char_names
)]

use std::env;
use std::io::{self, Read};
use std::process;
use std::time::Duration;
use std::{mem::size_of};

use libc::{clock_gettime, timespec, CLOCK_PROCESS_CPUTIME_ID};

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
fn main() -> io::Result<()> {
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
            i += 1;
        }
        "cooperman_ma" => {
            composition = composition_cooperman_ma;
            i += 1;
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
                if unsafe{ CACHE_SIZE } < 2 * size_of::<PermT>() {
                    eprintln!("Cache size must be large enough to fit at least two indices.");
                    process::exit(1);
                }
                // Checks if cache_size is a power of 2
                if unsafe { CACHE_SIZE & (CACHE_SIZE - 1) } != 0 {
                    eprintln!("Cache size must be a power of 2.");
                    process::exit(1);
                }
                i += 1;
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
    let mut buffer = [0; size_of::<usize>()];
    io::stdin().read_exact(&mut buffer)?;
    let n = usize::from_le_bytes(buffer);
    if n < 1 {
        eprintln!("Please enter n greater or equal to 1");
        process::exit(1);
    }
    if n - 1 > PermT::MAX as usize {
        eprintln!("Please enter n less than {}\n", PermT::MAX as u128 + 1);
        process::exit(1);
    }
    let cpu_time;
    let mut z: Vec<PermT> = vec![0; n];
    {
        // Vectors stored on the heap
        let mut x: Vec<PermT> = vec![0; n];
        let mut y: Vec<PermT> = vec![0; n];
        let mut buffer = [0; size_of::<PermT>()];
        for element in x.iter_mut() {
            io::stdin().read_exact(&mut buffer)?;
            *element = PermT::from_le_bytes(buffer);
            if n <= *element {
                eprintln!("Invalid input: x[{}]={} not less than n={}", i, *element, n);
                process::exit(1);
            }
        }
        for element in y.iter_mut() {
            io::stdin().read_exact(&mut buffer)?;
            *element = PermT::from_le_bytes(buffer);
            if n <= *element {
                eprintln!("Invalid input: y[{}]={} not less than n={}", i, *element, n);
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
    for element in z.iter().take(n).skip(1) {
        print!(" {}", *element);
    }
    println!();
    Ok(())
}

fn get_cpu_time() -> io::Result<Duration> {
    let mut time = timespec {
        tv_sec: 0,  // seconds
        tv_nsec: 0, // nanoseconds
    };
    if unsafe { clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &mut time) } == -1 {
        return Err(io::Error::last_os_error());
    }
    Ok(Duration::new(time.tv_sec as u64, time.tv_nsec as u32))
}

#![allow(clippy::many_single_char_names)]

use std::convert::TryInto;
use std::env;
use std::io::{self, Read, Write};
use std::mem::size_of;
use std::process;
use std::time::Duration;

extern crate libc;

use libc::{clock_gettime, timespec, CLOCK_REALTIME};

mod composition;
use composition::PermT;
mod composition_naive;
use composition_naive::composition_naive;
mod composition_cooperman_ma;
use composition_cooperman_ma::{composition_cooperman_ma, CACHE_SIZE};
mod composition_multithread_naive;
mod composition_multithread_cooperman_ma;

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
    type Composition = fn(usize, &[PermT], &[PermT], &mut [PermT]);
    let composition: Composition;
    let mut i = 2;
    match args[1].as_str() {
        "naive" => {
            composition = composition_naive;
        }
        "cooperman_ma" => {
            composition = composition_cooperman_ma;
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
                if unsafe { CACHE_SIZE } < 2 * size_of::<PermT>() {
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
        "multithread_naive" => {
            composition = composition_multithread_naive::composition_multithread_naive;
            if args.len() > i {
                unsafe {
                    composition_multithread_naive::THREADS = match args[i].parse::<usize>() {
                        Ok(num) => num,
                        Err(e) => {
                            eprintln!("Invalid number of threads: {}", e);
                            process::exit(1);
                        }
                    };
                }
                i += 1;
            }
        }
        "multithread_cooperman_ma" => {
            composition = composition_multithread_cooperman_ma::composition_multithread_cooperman_ma;
            if args.len() > i {
                unsafe {
                    composition_multithread_cooperman_ma::THREADS = match args[i].parse::<usize>() {
                        Ok(num) => num,
                        Err(e) => {
                            eprintln!("Invalid number of threads: {}", e);
                            process::exit(1);
                        }
                    };
                }
                i += 1;
            }
            if args.len() > i {
                unsafe {
                    composition_multithread_cooperman_ma::CACHE_SIZE = match args[i].parse::<usize>() {
                        Ok(num) => num,
                        Err(e) => {
                            eprintln!("Invalid cache size: {}", e);
                            process::exit(1);
                        }
                    };
                }
                if unsafe { composition_multithread_cooperman_ma::CACHE_SIZE } < 2 * size_of::<PermT>() {
                    eprintln!("Cache size must be large enough to fit at least two indices.");
                    process::exit(1);
                }
                // Checks if cache_size is a power of 2
                if unsafe { composition_multithread_cooperman_ma::CACHE_SIZE & (composition_multithread_cooperman_ma::CACHE_SIZE - 1) } != 0 {
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
        for (i, element) in x.iter_mut().enumerate() {
            io::stdin().read_exact(&mut buffer)?;
            *element = PermT::from_le_bytes(buffer);
            if n <= (*element).try_into().unwrap() {
                eprintln!("Invalid input: x[{}]={} not less than n={}", i, *element, n);
                process::exit(1);
            }
        }
        for (i, element) in y.iter_mut().enumerate() {
            io::stdin().read_exact(&mut buffer)?;
            *element = PermT::from_le_bytes(buffer);
            if n <= (*element).try_into().unwrap() {
                eprintln!("Invalid input: y[{}]={} not less than n={}", i, *element, n);
                process::exit(1);
            }
        }

        // Time permutation composition
        let start_cpu_time = get_time().expect("Failed to get CPU start time");
        for _ in 0..iterations {
            composition(n, &x, &y, &mut z);
        }
        let end_cpu_time = get_time().expect("Failed to get CPU end time");
        cpu_time = end_cpu_time.checked_sub(start_cpu_time).unwrap();
    }
    let cpu_time_ns = cpu_time.as_nanos();
    println!("{}", cpu_time_ns);

    // Print z=xy to stdout
    for element in z {
        io::stdout().write_all(&element.to_le_bytes())?;
    }
    Ok(())
}

fn get_time() -> io::Result<Duration> {
    let mut time = timespec {
        tv_sec: 0,  // seconds
        tv_nsec: 0, // nanoseconds
    };
    if unsafe { clock_gettime(CLOCK_REALTIME, &mut time) } == -1 {
        return Err(io::Error::last_os_error());
    }
    Ok(Duration::new(time.tv_sec as u64, time.tv_nsec as u32))
}

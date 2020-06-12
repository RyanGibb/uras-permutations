use std::io::{Error, Result};
use std::time::{Duration};
use std::env;

use text_io::try_read;
use libc::{clock_gettime, timespec, CLOCK_PROCESS_CPUTIME_ID};

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

// Calculates z = xy, overwriting z. All of x, y, and z must of size n.
fn permutation_composition(n: usize, x: &[usize], y: &[usize], z: &mut [usize]) {
    for i in 0..n {
        z[i] = y[x[i]];
    }
}

// From stdin inputs a positive number n, and two permutations x & y of size n.
// The composition of these two permutations z=xy is printed to stdout.
// The input and output format is described in README.md.
fn main() {
    let args: Vec<String> = env::args().collect();
    let iterations: i64;
    if args.len() > 1 {
        iterations = match args[1].parse::<i64>() {
            Ok(num) => if num < 1 { 1 } else {num},
            Err(_) => 1,
        };
    } else {
        iterations = 1;
    }
    // If 64bit then usize is 8 bytes
    let n: usize = try_read!().expect("Invalid input");
    if n < 1 {
        println!("Please enter n greater or equal to 1");
        return;
    }
    let cpu_time;
    let mut z: Vec<usize> = vec![0; n];
    {
        // Vectors stored on the heap
        let mut x: Vec<usize> = vec![0; n];
        let mut y: Vec<usize> = vec![0; n];
        for i in 0..n {
            x[i] = try_read!().expect("Invalid input");
        }
        for i in 0..n {
            y[i] = try_read!().expect("Invalid input");
        }
        let start_cpu_time = get_cpu_time().expect("Failed to get CPU start time");
        for _ in 0..iterations {
            permutation_composition(n, &x, &y, &mut z);
        }
        let end_cpu_time = get_cpu_time().expect("Failed to get CPU end time");
        cpu_time = end_cpu_time.checked_sub(start_cpu_time).unwrap();
    }
    println!("{}", cpu_time.as_nanos());
    print!("{}", z[0]);
    for i in 1..n {
        print!(" {}", z[i]);
    }
    println!();
}

use std::io::{Error, Result};
use std::time::Duration;
use std::env;
use std::{convert::TryInto, mem::size_of};

use text_io::try_read;
use libc::{clock_gettime, timespec, CLOCK_PROCESS_CPUTIME_ID};

// Datatype used to store permutation indices.
// Should be unsigned to prevent values less than 0.
// PermT's max value is the highest permutation degree supported.
type PermT = usize;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
fn permutation_composition(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    for i in 0..n {
        unsafe {
            let j = *x.get_unchecked(i);
            let k = *y.get_unchecked(j as usize);
            *z.get_unchecked_mut(i) = k;
        }
    }
}

// From stdin inputs a positive number n, and two permutations x & y of size n.
// The composition of these two permutations z=xy is printed to stdout.
// The input and output format is described in README.md.
fn main() {
    // Don't print error message on broken pipe.
    unsafe { libc::signal(libc::SIGPIPE, libc::SIG_DFL); }
    let args: Vec<String> = env::args().collect();
    let iterations: u64;
    if args.len() > 1 {
        iterations = args[1].parse::<u64>().expect("Invalid iterations");
    } else {
        iterations = 1;
    }
    // If 64bit then usize is 8 bytes
    let n: usize = try_read!().expect("Invalid input");
    if n < 1 {
        println!("Please enter n greater or equal to 1");
        return;
    }
    let max_n: u128 = 2u128.pow((size_of::<PermT>() * 8).try_into().unwrap());
	if  max_n <= n.try_into().unwrap() {
		panic!("Please enter n less than {}\n", max_n);
	}
    let cpu_time;
    let mut z: Vec<PermT> = vec![0; n];
    {
        // Vectors stored on the heap
        let mut x: Vec<PermT> = vec![0; n];
        let mut y: Vec<PermT> = vec![0; n];
        for i in 0..n {
            x[i] = try_read!().expect("Invalid input");
            if x[i] >= n.try_into().unwrap() {
                panic!("Invalid input");
            }
        }
        for i in 0..n {
            y[i] = try_read!().expect("Invalid input");
            if y[i] >= n.try_into().unwrap() {
                panic!("Invalid input");
            }
        }
        let start_cpu_time = get_cpu_time().expect("Failed to get CPU start time");
        for _ in 0..iterations {
            permutation_composition(n, &x, &y, &mut z);
        }
        let end_cpu_time = get_cpu_time().expect("Failed to get CPU end time");
        cpu_time = end_cpu_time.checked_sub(start_cpu_time).unwrap();
    }
    let cpu_time_ns = cpu_time.as_nanos();
    println!("{}", cpu_time_ns);
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

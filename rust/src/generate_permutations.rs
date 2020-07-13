use rand::{prelude::ThreadRng, Rng};
use std::env;
use std::io::{self, Write};
use std::process;

use libc;

mod composition;
use composition::PermT;

// Uses the Fisher–Yates shuffle to generate a random permutation of degree n
fn generate_random_permutation(n: usize, rng: &mut ThreadRng) -> Vec<PermT> {
    let mut p: Vec<PermT> = vec![0; n];
    for i in 0..n {
        p[i] = i;
    }
    for i in 0..n {
        let j = rng.gen_range(i, n);
        let temp = p[j];
        p[j] = p[i];
        p[i] = temp;
    }
    p
}

fn generate_permutation_pair(n: usize, rng: &mut ThreadRng) -> io::Result<()> {
    io::stdout().write_all(&n.to_le_bytes())?;
    let x = generate_random_permutation(n, rng);
    for i in 0..n {
        io::stdout().write_all(&x[i].to_le_bytes())?;
    }
    let y = generate_random_permutation(n, rng);
    for i in 0..n {
        io::stdout().write_all(&y[i].to_le_bytes())?;
    }
    Ok(())
}

fn main() -> io::Result<()> {
    // Don't print error message on broken pipe.
    unsafe {
        libc::signal(libc::SIGPIPE, libc::SIG_DFL);
	}
	
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        eprintln!("Please enter n as a command line argument.");
        process::exit(1);
    }
    let n = match args[1].parse::<PermT>() {
        Ok(num) => num,
        Err(e) => {
            eprintln!("Invalid n: {}", e);
            process::exit(1);
        }
    };
    if n < 1 {
        eprintln!("Please enter n greater or equal to 1");
        process::exit(1);
    }
    if n - 1 > PermT::MAX {
        eprintln!("Please enter n less than {}\n", PermT::MAX as u128 + 1);
        process::exit(1);
    }
    let mut rng = rand::thread_rng();
    generate_permutation_pair(n, &mut rng)?;
    Ok(())
}

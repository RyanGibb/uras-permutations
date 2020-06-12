use text_io::try_read;

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
    // If 64bit then usize is 8 bytes
    let n: usize = try_read!().expect("Invalid input");
    if n < 1 {
        println!("Please enter n greater or equal to 1");
        return;
    }
    // Vectors stored on the heap
    let mut x: Vec<usize> = vec![0; n];
    let mut y: Vec<usize> = vec![0; n];
    let mut z: Vec<usize> = vec![0; n];
    for i in 0..n {
        x[i] = try_read!().expect("Invalid input");
    }
    for i in 0..n {
        y[i] = try_read!().expect("Invalid input");
    }
    permutation_composition(n, &x, &y, &mut z);
    print!("{}", z[0]);
    for i in 1..n {
        print!(" {}", z[i]);
    }
    println!();
}

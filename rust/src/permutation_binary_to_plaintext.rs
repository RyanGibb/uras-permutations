
mod composition;
use composition::PermT;

use std::io::{self, Read, ErrorKind};
use std::mem::size_of;

fn main() -> io::Result<()> {
    // Vector stored on the heap
    let mut permutation: Vec<PermT> = Vec::new();
    let mut buffer = [0; size_of::<PermT>()];
    loop {
        match io::stdin().read_exact(&mut buffer) {
            Ok(v) => v,
            Err(e) if e.kind() == ErrorKind::UnexpectedEof => break,
            Err(e) => return Err(e),
        };
        permutation.push(PermT::from_le_bytes(buffer));
    }
    if permutation.len() > 0 {
        print!("{}", permutation[0]);
        for element in permutation.iter().skip(1) {
            print!(" {}", *element);
        }
    }
    println!();
    Ok(())
}


// use std::process;
// use std::convert::TryInto;

// fn main() -> io::Result<()> {
//     // Parse permutations x & y from stdin
//     let mut buffer = [0; size_of::<usize>()];
//     io::stdin().read_exact(&mut buffer)?;
//     let n = usize::from_le_bytes(buffer);
//     if n < 1 {
//         eprintln!("Please enter n greater or equal to 1");
//         process::exit(1);
//     }
//     if n - 1 > PermT::MAX as usize {
//         eprintln!("Please enter n less than {}\n", PermT::MAX as u128 + 1);
//         process::exit(1);
//     }
//     // Vectors stored on the heap
//     let mut x: Vec<PermT> = vec![0; n];
//     let mut y: Vec<PermT> = vec![0; n];
//     let mut buffer = [0; size_of::<PermT>()];
//     for (i, element) in x.iter_mut().enumerate() {
//         io::stdin().read_exact(&mut buffer)?;
//         *element = PermT::from_le_bytes(buffer);
//         if n <= (*element).try_into().unwrap() {
//             eprintln!("Invalid input: x[{}]={} not less than n={}", i, *element, n);
//             process::exit(1);
//         }
//     }
//     for (i, element) in y.iter_mut().enumerate() {
//         io::stdin().read_exact(&mut buffer)?;
//         *element = PermT::from_le_bytes(buffer);
//         if n <= (*element).try_into().unwrap() {
//             eprintln!("Invalid input: y[{}]={} not less than n={}", i, *element, n);
//             process::exit(1);
//         }
//     }
//     println!("{}", n);
//     print!("{}", x[0]);
//     for element in x.iter().skip(1) {
//         print!(" {}", *element);
//     }
//     println!();
//     print!("{}", y[0]);
//     for element in y.iter().skip(1) {
//         print!(" {}", *element);
//     }
//     println!();
//     Ok(())
// }

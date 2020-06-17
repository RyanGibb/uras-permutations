use std::mem::size_of;
use std::process;

#[path = "composition.rs"]
mod composition;
use composition::PermT;

pub static mut CACHE_SIZE: usize = 256;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn composition_cooperman_ma(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    if unsafe { CACHE_SIZE } < 2 * size_of::<PermT>() {
        eprintln!("Cache size must be large enough to fit at least two indices.");
        process::exit(1);
    }
    let block_length = unsafe { CACHE_SIZE } / 2 / size_of::<PermT>();
    // Integer division rounding up
    let number_of_blocks = (n + block_length - 1) / block_length;
    let mut d: Vec<PermT> = vec![0; n];
    let mut d_ptr: Vec<*mut PermT> = Vec::with_capacity(number_of_blocks);
    unsafe {
        d_ptr.set_len(number_of_blocks);
    };

    //Phase I: distribute value, x[a], into d_ptr[block_num]
    // such that block_num == x[a] / block_length
    for block_num in 0..number_of_blocks {
        d_ptr[block_num] = &mut d[block_num * block_length];
    }
    for i in 0..n {
        let block_num: usize = x[i] / block_length;
        unsafe { *d_ptr[block_num] = x[i] };
        d_ptr[block_num] = unsafe { d_ptr[block_num].offset(1) };
    }

    //Phase II: for d[i] == x[a], replace the value x[a] by y[x[a]]
    // Note that |i - d[i]| == |i - x[a]| and |i-x[a]| < block_length
    for i in 0..n {
        d[i] = y[d[i]];
    }

    //Phase III: copy value y[x[a]] from d_ptr[block_num] to z[a]
    for block_num in 0..number_of_blocks {
        d_ptr[block_num] = &mut d[block_num * block_length];
    }
    for i in 0..n {
        let block_num = x[i] / block_length;
        z[i] = unsafe { *d_ptr[block_num] };
        d_ptr[block_num] = unsafe { d_ptr[block_num].offset(1) };
    }
}

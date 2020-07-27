use std::mem::size_of;

#[path = "composition.rs"]
mod composition;
use composition::PermT;

// Should be a power of 2
pub static mut CACHE_SIZE: usize = 256;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn composition_cooperman_ma(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    // block_length, and therefor cache_size, should be a power of 2
    let mut block_length = unsafe { CACHE_SIZE } / 2 / size_of::<PermT>();
    // Used for efficient right shift division by block_length
    let block_length_shift: u8 = (block_length as f64).log2() as u8;
    // Rounds block_length down to the nearest power of 2 (if it isn't already one)
    block_length = 2usize.pow(block_length_shift as u32);

    // Integer division rounding up
    let number_of_blocks = (n + block_length - 1) >> block_length_shift;

    let mut d: Vec<PermT> = vec![0; n];
    let mut d_ptr: Vec<*mut PermT> = Vec::with_capacity(number_of_blocks);
    
    //Phase I: distribute value, x[a], into d_ptr[block_num]
    // such that block_num == x[a] / block_length
    unsafe {
        for block_num in 0..number_of_blocks {
            *d_ptr.get_unchecked_mut(block_num) = d.get_unchecked_mut(block_num * block_length);
        }
        d_ptr.set_len(number_of_blocks);
    }
    for i in 0..n {
        unsafe {
            // Equivalent to 'x[i] / block_length'
            let block_num = (*x.get_unchecked(i) >> block_length_shift) as usize;
            **d_ptr.get_unchecked_mut(block_num) = *x.get_unchecked(i);
            *d_ptr.get_unchecked_mut(block_num) = (*d_ptr.get_unchecked(block_num)).add(1);
        }
    }

    //Phase II: for d[i] == x[a], replace the value x[a] by y[x[a]]
    // Note that |i - d[i]| == |i - x[a]| and |i-x[a]| < block_length
    for i in 0..n {
        unsafe {
            let j = *d.get_unchecked(i);
            *d.get_unchecked_mut(i) = *y.get_unchecked(j as usize);
        }
    }

    //Phase III: copy value y[x[a]] from d_ptr[block_num] to z[a]
    for block_num in 0..number_of_blocks {
        unsafe {
            *d_ptr.get_unchecked_mut(block_num) = d.get_unchecked_mut(block_num * block_length);
        }
    }
    for i in 0..n {
        unsafe {
            // Equivalent to 'x[i] / block_length'
            let block_num = (*x.get_unchecked(i) >> block_length_shift) as usize;
            *z.get_unchecked_mut(i) = **d_ptr.get_unchecked(block_num);
            *d_ptr.get_unchecked_mut(block_num) = (*d_ptr.get_unchecked(block_num)).add(1);
        }
    }
}

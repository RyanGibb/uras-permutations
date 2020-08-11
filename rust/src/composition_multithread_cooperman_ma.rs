#[path = "composition.rs"]
mod composition;
use composition::PermT;

use std::mem::size_of;
use std::cmp::min;
use std::sync::{Mutex, MutexGuard};

extern crate crossbeam;

pub static mut THREADS: usize = 4;
pub static mut CACHE_SIZE: usize = 64;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn composition_multithread_cooperman_ma(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    // block_length, and therefor cache_size, should be a power of 2
    let mut block_length = unsafe { CACHE_SIZE } / 2 / size_of::<PermT>();
    // Used for efficient right shift division by block_length
    let block_length_shift: u8 = (block_length as f64).log2() as u8;
    // Rounds block_length down to the nearest power of 2 (if it isn't already one)
    block_length = 2usize.pow(block_length_shift as u32);

    // Integer division rounding up
    let number_of_blocks = (n + block_length - 1) >> block_length_shift;

    let mut threads = unsafe { THREADS };
    let elements_per_block = block_length * 2;
    let mut elements_per_thread = n as f64 / threads as f64;
    // If there are less elements per thread than fit in a block,
    if elements_per_thread < elements_per_block as f64 {
        // Create a thread for each block's worth of elements (rounding up).
        threads = (n + elements_per_block - 1) / elements_per_block;
        elements_per_thread = n as f64 / threads as f64;
    }
    let blocks_per_thread = elements_per_thread / elements_per_block as f64;

    let mut d: Vec<PermT> = Vec::with_capacity(n);
    let mut d_ptr: Vec<*mut PermT> = Vec::with_capacity(number_of_blocks);
    
    //Phase I: distribute value, x[a], into d_ptr[block_num]
    // such that block_num == x[a] / block_length
    unsafe {
        for block_num in 0..number_of_blocks {
            *d_ptr.get_unchecked_mut(block_num) = d.get_unchecked_mut(block_num * block_length);
        }
        d_ptr.set_len(number_of_blocks);
        d.set_len(n);
    }
    for i in 0..n {
        unsafe {
            // Equivalent to 'x[i] / block_length'
            let block_num = (*x.get_unchecked(i) >> block_length_shift) as usize;
            **d_ptr.get_unchecked_mut(block_num) = *x.get_unchecked(i);
            *d_ptr.get_unchecked_mut(block_num) = (*d_ptr.get_unchecked(block_num)).add(1);
        }
    }

    let mut block_mutexes: Vec<Mutex<&mut [PermT]>> = Vec::with_capacity(number_of_blocks);
    for block in d.chunks_mut(block_length) {
        block_mutexes.push(Mutex::new(block));
    }
    //Phase II: for d[i] == x[a], replace the value x[a] by y[x[a]]
    // Note that |i - d[i]| == |i - x[a]| and |i-x[a]| < block_length
    let phase2 = |from_block, to_block| {
        for block_index in from_block..to_block {
            let mut block_guard: MutexGuard<&mut [PermT]> = unsafe { block_mutexes.get_unchecked::<usize>(block_index) }.lock().unwrap();
            for i in 0..min(block_length, n - block_index*block_length) {
                unsafe {
                    let j = *block_guard.get_unchecked(i);
                    *block_guard.get_unchecked_mut(i) = *y.get_unchecked(j as usize);
                }
            }
        }
    };
    crossbeam::scope(|scope| {
        for thread_id in 0..threads - 1 {
            let from_block = (thread_id as f64 * blocks_per_thread) as usize;
            let to_block = ((thread_id + 1) as f64 * blocks_per_thread) as usize;
            scope.spawn(move |_| phase2(from_block, to_block));
        }
        let from_block = ((threads - 1) as f64 * blocks_per_thread) as usize;
        phase2(from_block, number_of_blocks);
    }).unwrap();

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

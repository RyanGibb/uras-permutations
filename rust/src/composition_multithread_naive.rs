#[path = "composition.rs"]
mod composition;
use composition::PermT;

use std::mem::size_of;

extern crate crossbeam;

pub static mut THREADS: u32 = 4;
pub static mut CACHE_LINE_BYTES: u32 = 64;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn composition_multithread_naive(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    let mut threads = unsafe { THREADS };
    let cache_line_bytes = unsafe { CACHE_LINE_BYTES } as f64;
    let cache_line_elements = cache_line_bytes / size_of::<PermT>() as f64;
    let mut elements_per_thread = n as f64 / threads as f64;
    // Make sure the threads are operating on at least 1 whole cache line.
    if elements_per_thread < cache_line_elements {
        elements_per_thread = cache_line_elements;
        threads = (n as f64 / elements_per_thread).ceil() as u32;
        // If n is less than what fits in 1 cache line,
        // set the number of elements per thread to n.
        if (n as f64) < elements_per_thread {
            elements_per_thread = n as f64;
        }
    }

    // Scoped threads allows compiler to prove no thread will outlive x, y, and z.
    let _ = crossbeam::scope(|scope| {
        // Assign each thread to a different chunk of x and z.
        let mut index: f64 = 0f64;
        let mut x_tail: &[PermT] = x;
        let mut z_tail: &mut [PermT] = z;
        for thread_id in 0..threads {
            let prev_index: usize = index as usize;
            index += elements_per_thread;
            let rounded_index: f64;
            // Rounds index to the nearest cache line, if it isn't the last chunk.
            if thread_id != threads - 1 {
                let index_cache_lines = index / cache_line_elements as f64;
                rounded_index = index_cache_lines.round() * cache_line_elements as f64;
            } else {
                rounded_index = index;
            }
            let length: usize = (rounded_index as usize) - prev_index;
            let (x_slice, x_tail_temp) = x_tail.split_at(length as usize);
            x_tail = x_tail_temp;
            let (z_slice, z_tail_temp) = z_tail.split_at_mut(length as usize);
            z_tail = z_tail_temp;
            scope.spawn(move |_| composition_multithread_naive_thread(length, x_slice, y, z_slice));
        }
        // crossbeam::scope ensures all threads join before returning.
    });
}

fn composition_multithread_naive_thread(
    slice_length: usize,
    x_slice: &[PermT],
    y: &[PermT],
    z: &mut [PermT],
) {
    for i in 0..slice_length {
        unsafe {
            let j = *x_slice.get_unchecked(i);
            let k = *y.get_unchecked(j as usize);
            *z.get_unchecked_mut(i) = k;
        }
    }
}

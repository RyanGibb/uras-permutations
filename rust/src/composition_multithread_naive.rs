#[path = "composition.rs"]
mod composition;
use composition::PermT;

use std::mem::size_of;

extern crate crossbeam;

pub static mut THREADS: usize = 4;
pub static mut CACHE_LINE_BYTES: usize = 64;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn composition_multithread_naive(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    let mut threads = unsafe { THREADS };
    let cache_line_bytes = unsafe { CACHE_LINE_BYTES };

    let elements_per_cache_line = cache_line_bytes / size_of::<PermT>();
    let mut elements_per_thread = n as f64 / threads as f64;
    // If there are less elements per thread than fit in a cache line,
    if elements_per_thread < elements_per_cache_line as f64 {
        // Create a thread for each cache line's worth of elements.
        threads = n / elements_per_cache_line;
        elements_per_thread = n as f64 / threads as f64;
    }
    let cache_lines_per_thread = elements_per_thread / elements_per_cache_line as f64;

    if threads > 1 {
        // Scoped threads allows compiler to prove no thread will outlive x, y, and z.
        crossbeam::scope(|scope| {
            // Assign each thread to a different chunk of x and z.
            let mut x_tail: &[PermT] = x;
            let mut z_tail: &mut [PermT] = z;

            for thread_id in 0..threads-1 {
                let l = (thread_id as f64 * cache_lines_per_thread) as usize;
                let h = ((thread_id + 1) as f64 * cache_lines_per_thread) as usize;
                let length = (h - l) * elements_per_cache_line;

                let (x_slice, x_tail_temp) = x_tail.split_at(length);
                x_tail = x_tail_temp;
                let (z_slice, z_tail_temp) = z_tail.split_at_mut(length);
                z_tail = z_tail_temp;

                scope.spawn(move |_| composition_multithread_naive_thread(length, x_slice, y, z_slice));
            }
            composition_multithread_naive_thread(x_tail.len(), x_tail, y, z_tail);
            // crossbeam::scope ensures all threads join before returning.
        }).unwrap();
    } else {
        composition_multithread_naive_thread(n, x, y, z);
    }
}

fn composition_multithread_naive_thread(
    slice_length: usize,
    x_slice: &[PermT],
    y: &[PermT],
    z_slice: &mut [PermT],
) {
    for i in 0..slice_length {
        unsafe {
            let j = *x_slice.get_unchecked(i);
            let k = *y.get_unchecked(j as usize);
            *z_slice.get_unchecked_mut(i) = k;
        }
    }
}

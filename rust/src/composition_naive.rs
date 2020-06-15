#[path = "composition.rs"]
mod composition;
use composition::PermT;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn composition_naive(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    for i in 0..n {
        unsafe {
            let j = *x.get_unchecked(i);
            let k = *y.get_unchecked(j as usize);
            *z.get_unchecked_mut(i) = k;
        }
    }
}

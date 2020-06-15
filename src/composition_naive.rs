
// Datatype used to store permutation indices.
// Should be unsigned to prevent values less than 0.
// PermT's max value is the highest permutation degree supported.
pub type PermT = usize;

// Calculates z = xy, overwriting z. All of x, y, and z must of size n,
// with x and y containing values from 0 to n - 1.
pub fn permutation_composition(n: usize, x: &[PermT], y: &[PermT], z: &mut [PermT]) {
    for i in 0..n {
        unsafe {
            let j = *x.get_unchecked(i);
            let k = *y.get_unchecked(j as usize);
            *z.get_unchecked_mut(i) = k;
        }
    }
}

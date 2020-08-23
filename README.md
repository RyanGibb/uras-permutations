# Cache and Multi-Core efficient algorithms for high-degree permutations

For the Undergraduate Research Assistant Scheme with the School of Computer Science, University of St Andrews.

## I/O Formats

### Permutation Format

A permutation σ of degree n is a bijective function from a set S={1, ..., n} onto itself.

Here they are represented by n unsigned integers stored as the size of the permutation index type (`size_of::<PermT>()` for Rust and `sizeof(perm_t)` for C) bytes in little endian. Every integer from 0 to n - 1 (inclusive) is in included, with no duplicates (as σ is bijective). For the i<sup>th</sup> integer j, σ(i+1) = j+1. So j+1 is the image of i+1 under σ. Note the +1's mean i and j can be used as indices directly.

### Composition Algorithm Input Format

The input format to the composition algorithms is n, x, and y in sequence where n is a unsigned integer stored as the size of the pointers on the target machine (`size_of::<usize>()` for Rust and `sizeof(size_t)` for C) bytes in little endian.

### Composition Algorithm Output Format

A permutation z of degree n.

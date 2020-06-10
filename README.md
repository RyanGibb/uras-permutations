# Cache and Multi-Core efficient algorithms for high-degree permutations

For the Undergraduate Research Assistant Scheme with the School of Computer Science, University of St Andrews.

## I/O Formats

### Permutation Format

A permutation σ of degree n is a bijective function from a set S={1, ..., n} onto itself.

Here it's represented by n space seperated positive integers. Every integer from 0 to n - 1 (inclusive) is in included, with no duplicates (as σ is bijective). For the i<sup>th</sup> integer j, σ(i+1) = j+1. So j+1 is the image of i+1 under σ. Note the +1's mean i and j can be used as indices directly.

### Input Format

Space seperated n, x, and y. Where n is a positive integer, and x & y are permutations of degree n.

See files in permutaions directory with naming scheme 'n'_pair.txt

### Output Format

A permutation z of degree n.

#include <math.h>

#include "composition.h"

// Should be a power of 2
size_t cache_size = 256;

/*
 * Calculates z = xy, overwriting z. All of x, y, and z must of size n,
 * with x and y containing values from 0 to n - 1.
 */
void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	// block_length, and therefor cache_size, should be a power of 2
	size_t block_length = cache_size/2/sizeof(perm_t);
	// Used for efficient right shift division by block_length
	char block_length_shift = (char) floor(log2(block_length));
	// Rounds block_length down to the nearest power of 2 (if it isn't already one)
	block_length = (size_t) pow(2, block_length_shift);

    // Integer division rounding up. Equivalent to 'ceil(n / block_length)'.
	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	perm_t* d = malloc(n * sizeof(perm_t));
	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));

    //Phase I: distribute value, x[a], into d_ptr[block_num]
    // such that block_num == x[a] / block_length
	size_t block_num, i;
	for (block_num = 0; block_num < number_of_blocks; block_num++) {
		d_ptr[block_num] = &d[block_num * block_length];
	}
	for (i = 0; i < n; i++) {
		// Equivalent to 'x[i] / block_length'
		block_num = x[i] >> block_length_shift;
		*d_ptr[block_num] = x[i];
		d_ptr[block_num]++;
	}

    //Phase II: for d[i] == x[a], replace the value x[a] by y[x[a]]
    // Note that |i - d[i]| == |i - x[a]| and |i-x[a]| < block_length
	for (i = 0; i < n; i++) {
		d[i] = y[d[i]];
	}

    //Phase III: copy value y[x[a]] from d_ptr[block_num] to z[a]
	for (block_num = 0; block_num < number_of_blocks; block_num++) {
		d_ptr[block_num] = &d[block_num * block_length];
	}
	for (i = 0; i < n; i++) {
		// Equivalent to 'x[i] / block_length'
		block_num = x[i] >> block_length;
		z[i] = *d_ptr[block_num];
		d_ptr[block_num]++;
	}
}

#include <stdio.h>

#include "permutation_composition.h"

#ifndef CACHE_SIZE
#define CACHE_SIZE 256
#endif

/*
 * Calculates z = xy, overwriting z. All of x, y, and z must of size n,
 * with x and y containing values from 0 to n - 1.
 */
void permutation_composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	size_t block_length = CACHE_SIZE/2/sizeof(perm_t);
    // Integer division rounding up
	size_t number_of_blocks = (n + block_length - 1) / block_length;
	perm_t* d = malloc(n * sizeof(perm_t));
	perm_t** d_ptr = malloc(n * sizeof(perm_t));

    //Phase I: distribute value, x[a], into d_ptr[block_num]
    // such that block_num == x[a] / block_length
	int block_num, i;
	for (block_num= 0; block_num < number_of_blocks; block_num++) {
		d_ptr[block_num] = &d[block_num * block_length];
	}
	for (i = 0; i < n; i++) {
		block_num = x[i] / block_length;
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
		block_num = x[i] / block_length;
		z[i] = *d_ptr[block_num];
		d_ptr[block_num]++;
	}
}

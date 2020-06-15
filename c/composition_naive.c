
#include <math.h>

#include "composition.h"

/*
 * Calculates permutation composition z = xy, overwriting z.
 * All of x, y, and z must of size n, with x and y containing values from 0 to n - 1.
 */
void composition_naive(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	for (int i = 0; i < n; i++) {
		z[i] = y[x[i]];
	}
}

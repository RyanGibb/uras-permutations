#include "composition.h"

// For these vector instruction optmizations perm_t should be signed,
// and the -march=native compilation flag used.

/*
 * Calculates permutation composition z = xy, overwriting z.
 * All of x, y, and z must of size n, with x and y containing values from 0 to n - 1.
 */
void composition(size_t n, perm_t* restrict x, perm_t* restrict y, perm_t* restrict z) {
	for (size_t i = 0; i < n; i++) {
		z[i] = y[x[i]];
	}
}

// #include "composition.h"

#include <stdlib.h>

typedef int s_perm_t;

/*
 * Calculates permutation composition z = xy, overwriting z.
 * All of x, y, and z must of size n, with x and y containing values from 0 to n - 1.
 */
void composition(size_t n, s_perm_t* restrict x, s_perm_t* restrict y, s_perm_t* restrict z) {
	for (size_t i = 0; i < n; i++) {
		z[i] = y[x[i]];
	}
}

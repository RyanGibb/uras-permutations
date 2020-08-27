#include "composition.h"

/*
 * Calculates permutation composition z = xy, overwriting z.
 * All of x, y, and z must of size n, with x and y containing values from 0 to n - 1.
 */
void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	perm_t rolls[ROLLS];
	size_t n_rounded = (n / ROLLS) * ROLLS;
	for (size_t i = 0; i < n_rounded; i += ROLLS) {
		for (size_t j = 0; j < ROLLS; j++) {
			rolls[j] = y[x[i + j]];
		}
		for (size_t j = 0; j < ROLLS; j++) {
			z[i + j] = rolls[j];
		}
	}
	size_t i = n_rounded;
	size_t leftover_n = n - n_rounded;
	for (size_t j = 0; j < leftover_n; j++) {
		rolls[j] = y[x[i + j]];
	}
	for (size_t j = 0; j < leftover_n; j++) {
		z[i + j] = rolls[j];
	}
}

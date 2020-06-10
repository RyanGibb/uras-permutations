#include <stdio.h>
#include <stdlib.h>

/*
 * Calculates z = xy, overwriting z. All the arrays must of size n.
 */
void permutation_composition(int n, size_t x[], size_t y[], size_t z[]) {
	for (int i = 0; i < n; i++) {
		z[i] = y[x[i]];
	}
}

/*
 * From stdin inputs a positive number n, and two permutations x & y of size n.
 * The composition of these two permutations z=xy is printed to stdout.
 * The input and output format is described in README.md.
 */
int main(int argc, char *argv[]) {
    // If 64bit then size_t is 8 bytes
	size_t n;
	scanf("%zu", &n);
	if (n < 1) {
		printf("Please enter n greater or equal to 1\n");
		return -1;
	}
	// Dynamically allocated to avoid overflowing the stack for large n's
	size_t* x = malloc(n * sizeof(size_t));
	size_t* y = malloc(n * sizeof(size_t));
	size_t* z = malloc(n * sizeof(size_t));
	for (int i = 0; i < n; i++) {
		scanf("%zu", &x[i]);
	}
	for (int i = 0; i < n; i++) {
		scanf("%zu", &y[i]);
	}
	permutation_composition(n, x, y, z);
	printf("%zu", z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %zu", z[i]);
	}
	printf("\n");
	return 0;
}

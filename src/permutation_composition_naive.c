#include <stdio.h>
#include <stdlib.h>

/**
 * Calculates z = xy, overwriting z. All the arrays must of size n.
 * */
void permutation_composition(int n,
		unsigned long long x[],
		unsigned long long y[],
		unsigned long long z[]) {
	for (int i = 0; i < n; i++) {
		z[i] = y[x[i]];
	}
}

/**
 * From stdin inputs n, then two permutations x and y of size n.
 * Prints the composition of these two permutations xy to stdout.
 * */
int main(int argc, char *argv[]) {
	int n;
	scanf("%d", &n);
	if (n < 1) {
		printf("Please enter n greater or equal to 1\n");
		return -1;
	}
	// Dynamically allocated to avoid overflowing the stack for large n's
	unsigned long long* x = malloc(n * sizeof(unsigned long long));
	unsigned long long* y = malloc(n * sizeof(unsigned long long));
	unsigned long long* z = malloc(n * sizeof(unsigned long long));
	for (int i = 0; i < n; i++) {
		scanf("%llu", &x[i]);
	}
	for (int i = 0; i < n; i++) {
		scanf("%llu", &y[i]);
	}
	permutation_composition(n, x, y, z);
	printf("%llu", z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %llu", z[i]);
	}
	printf("\n");
	return 0;
}


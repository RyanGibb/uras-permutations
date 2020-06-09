#include <stdio.h>
#include <stdlib.h>

/**
 * Calculates and returns z = xy. The arrays x and y must of size n.
 * */
unsigned long long* permutation_composition(int n,
		unsigned long long x[],
		unsigned long long y[]) {
	unsigned long long* z = malloc(n * sizeof(unsigned long long));
	for (int i = 0; i < n; i++) {
		z[i] = y[x[i]];
	}
	return z;
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
	unsigned long long* x = malloc(n * sizeof(unsigned long long));
	unsigned long long* y = malloc(n * sizeof(unsigned long long));
	for (int i = 0; i < n; i++) {
		scanf("%llu", &x[i]);
	}
	for (int i = 0; i < n; i++) {
		scanf("%llu", &y[i]);
	}
	unsigned long long* z;
	z = permutation_composition(n, x, y);
	printf("%llu", z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %llu", z[i]);
	}
	printf("\n");
	return 0;
}


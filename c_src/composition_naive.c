#define _POSIX_C_SOURCE 199309L

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <string.h>

unsigned long long get_elapsed_ns(struct timespec* start, struct timespec* end) {
	return (end->tv_sec - start->tv_sec) * 1e+9 + (end->tv_nsec - start->tv_nsec);
}

/*
 * Calculates z = xy, overwriting z. All of x, y, and z must of size n,
 * with x and y containing values from 0 to n - 1.
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
	long long iterations;
	if (argc > 1) {
		iterations = strtoll(argv[1], NULL, 10);
		if (iterations < 1) {
			iterations = 1;
		}
	} else {
		iterations = 1;
	}
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
	int rc;
	struct timespec start_cpu_time;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start_cpu_time);
	if (rc == -1) {
		printf("Failed to get CPU start time: %s\n", strerror(errno));
		return -1;
	}
	for (int i = 0; i < iterations; i++) {
		permutation_composition(n, x, y, z);
	}
	struct timespec end_cpu_time;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end_cpu_time);
	if (rc == -1) {
		printf("Failed to get CPU end time: %s\n", strerror(errno));
		return -1;
	}
	unsigned long long cpu_time_ns = get_elapsed_ns(&start_cpu_time, &end_cpu_time);
	free(x);
	free(y);
    printf("%llu\n", cpu_time_ns);
	printf("%zu", z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %zu", z[i]);
	}
	printf("\n");
	free(z);
	return 0;
}

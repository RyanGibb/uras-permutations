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
	int rc;
	struct timespec wallclock_start;
	rc = clock_gettime(CLOCK_MONOTONIC, &wallclock_start);
	if (rc == -1) {
		printf("Failed to get wallclock start time: %s\n", strerror(errno));
		return -1;
	}
	struct timespec cpu_start;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &cpu_start);
	if (rc == -1) {
		printf("Failed to get CPU start time: %s\n", strerror(errno));
		return -1;
	}
	permutation_composition(n, x, y, z);
	struct timespec wallclock_end;
	rc = clock_gettime(CLOCK_MONOTONIC, &wallclock_end);
	if (rc == -1) {
		printf("Failed to get wallclock end time: %s\n", strerror(errno));
		return -1;
	}
	struct timespec cpu_end;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &cpu_end);
	if (rc == -1) {
		printf("Failed to get CPU end time: %s\n", strerror(errno));
		return -1;
	}
	unsigned long long wallclock_elapsed_ns = get_elapsed_ns(&wallclock_start, &wallclock_end);
	unsigned long long cpu_elapsed_ns = get_elapsed_ns(&cpu_start, &cpu_end);
    printf("Wallclock Time (ns): %llu\n", wallclock_elapsed_ns);
    printf("CPU Time (ns): %llu\n", cpu_elapsed_ns);
	printf("%zu", z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %zu", z[i]);
	}
	printf("\n");
	return 0;
}

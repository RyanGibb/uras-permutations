#define _POSIX_C_SOURCE 199309L

#include <stdio.h>
#include <time.h>
#include <errno.h>
#include <string.h>
#include <math.h>

#include "composition.h"

extern size_t cache_size;

unsigned long long get_elapsed_ns(struct timespec* start, struct timespec* end) {
	return (end->tv_sec - start->tv_sec) * 1e+9 + (end->tv_nsec - start->tv_nsec);
}

const char* USAGE =
	"Usage: ./permutation_composition <algorithm:naive/cooperman_ma> "\
	"(cache_size if alrogithm=cooperman_ma) (iterations)\n";

/*
 * From stdin inputs a positive number n, and two permutations x & y of size n.
 * The composition of these two permutations z=xy is printed to stdout.
 * The input and output format is described in README.md.
 */
int main(int argc, char *argv[]) {
	// Parse command line arguments
	if (argc < 2) {
		fprintf(stderr, "Please enter an algorithm to use.");
		printf(USAGE);
		return 1;
	}
	int i = 1;
	char* algorithm = argv[i];
	void (*composition)(size_t n, perm_t x[], perm_t y[], perm_t z[]);
	if (strcmp(algorithm, "naive") == 0)  {
		composition = &composition_naive;
		i++;
	} else if (strcmp(algorithm, "cooperman_ma") == 0) {
		composition = &composition_cooperman_ma;
		i++;
		if (argc > i) {
			errno = 0;
			cache_size = (size_t) strtoul(argv[i], NULL, 10);
			if (errno != 0) {
				fprintf(stderr, "Invalid cache size: %s\n", strerror(errno));
				return 1;
			}
			i++;
		}
	} else {
		fprintf(stderr, "Invalid algorithm.\n");
		printf(USAGE);
		return 1;
	}
	unsigned long long iterations;
	if (argc > i) {
		errno = 0;
		iterations = strtoull(argv[i], NULL, 10);
		if (errno != 0) {
			fprintf(stderr, "Invalid iterations: %s\n", strerror(errno));
			return 1;
		}
		i++;
	} else {
		iterations = 1;
	}

	// Parse permutations x & y from stdin
	freopen(NULL, "rb", stdin);
	size_t n;
   	clearerr(stdin);
	fread(&n, 1, sizeof(size_t), stdin);
	if (ferror(stdin)) {
		fprintf(stderr, "Error reading n\n");
		return 1;
	}
	if (n < 1) {
		fprintf(stderr, "Please enter n greater or equal to 1\n");
		return 1;
	}
	long double max_n = powl(2, sizeof(perm_t) * 8);
	if (n >= max_n) {
		fprintf(stderr, "Please enter n less than %0.Lf\n", max_n);
		return 1;
	}
	// Dynamically allocated to avoid overflowing the stack for large n's
	perm_t* x = malloc(n * sizeof(perm_t));
	perm_t* y = malloc(n * sizeof(perm_t));
	perm_t* z = malloc(n * sizeof(perm_t));
	for (size_t i = 0; i < n; i++) {
   		clearerr(stdin);
		fread(&x[i], 1, sizeof(perm_t), stdin);
		if (ferror(stdin)) {
			fprintf(stderr, "Error reading x[%zu]\n", i);
			return 1;
		}
		if (x[i] >= n) {
			fprintf(stderr, "Invalid input: x[%zu]=%"PERM_T_FORMAT" not less than n=%zu\n", i, x[i], n);
			return 1;
		}
	}
	for (size_t i = 0; i < n; i++) {
		clearerr(stdin);
		fread(&y[i], 1, sizeof(perm_t), stdin);
		if (ferror(stdin)) {
			fprintf(stderr, "Error reading y[%zu]\n", i);
			return 1;
		}
		if (y[i] >= n) {
			fprintf(stderr, "Invalid input: y[%zu]=%"PERM_T_FORMAT" not less than n=%zu\n", i, y[i], n);
			return 1;
		}
	}

	// Time permutation composition
	int rc;
	struct timespec start_cpu_time;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start_cpu_time);
	if (rc == -1) {
		fprintf(stderr, "Failed to get CPU start time: %s\n", strerror(errno));
		return 1;
	}
	for (int i = 0; i < iterations; i++) {
		(*composition)(n, x, y, z);
	}
	struct timespec end_cpu_time;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end_cpu_time);
	if (rc == -1) {
		fprintf(stderr, "Failed to get CPU end time: %s\n", strerror(errno));
		return 1;
	}
	unsigned long long cpu_time_ns = get_elapsed_ns(&start_cpu_time, &end_cpu_time);
	free(x);
	free(y);
    printf("%llu\n", cpu_time_ns);

	// Print z=xy to stdout
	printf("%"PERM_T_FORMAT, z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %"PERM_T_FORMAT, z[i]);
	}
	printf("\n");
	free(z);
	return 0;
}

#define _POSIX_C_SOURCE 199309L

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <string.h>
#include <math.h>

// Datatype used to store permutation indices.
// Should be unsigned to prevent values less than 0.
// perm_t's max value is the highest permutation degree supported.
typedef size_t perm_t;
#define PERM_T_FORMAT "zu";

const size_t CACHE_SIZE = 256;

/*
 * Calculates z = xy, overwriting z. All of x, y, and z must of size n,
 * with x and y containing values from 0 to n - 1.
 */
void permutation_composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	size_t block_length = CACHE_SIZE/2/sizeof(perm_t);
	size_t NUMBER_OF_BLOCKS = n / block_length;
	perm_t* d = malloc(n * sizeof(perm_t));
	perm_t** d_ptr = malloc(n * sizeof(perm_t));

    //Phase I: distribute value, x[a], into d_ptr[block_num]
    // such that block_num == x[a] / block_length
	int block_num, i, j;
	for (block_num= 0; block_num < NUMBER_OF_BLOCKS; block_num++) {
		d_ptr[block_num] = &d[block_num * block_length];
	for (i = 0; i < n; i++) {
		block_num = x[i] / block_length;
		*d_ptr[block_num] = x[i];
		d_ptr[block_num]++;
	}

    //Phase II: for d[i] == x[a], replace the value x[a] by y[x[a]]
    // Note that |i - d[i]| == |i - x[a]| and |i-x[a]| < block_length
	for (i = 0; i < n; i++)
		d[i] = y[d[i]];

    //Phase III: copy value y[x[a]] from d_ptr[block_num] to z[a]
	for (block_num = 0; block_num < NUMBER_OF_BLOCKS; block_num++)
		d_ptr[block_num] = &d[block_num * block_length];
	for (i = 0; i < n; i++) {
		block_num = x[i] / block_length;
		z[i] = *d_ptr[block_num];
		d_ptr[block_num]++;
	}
}

/*
 * From stdin inputs a positive number n, and two permutations x & y of size n.
 * The composition of these two permutations z=xy is printed to stdout.
 * The input and output format is described in README.md.
 */
int main(int argc, char *argv[]) {
	unsigned long long iterations;
	if (argc > 1) {
		errno = 0;
		iterations = strtoull(argv[1], NULL, 10);
		if (errno != 0) {
			fprintf(stderr, "Invalid iterations: %s\n", strerror(errno));
			return -1;
		}
	} else {
		iterations = 1;
	}
	size_t n;
	errno = 0;
	scanf("%zu", &n);
	if (errno != 0) {
		fprintf(stderr, "Error reading: %s\n", strerror(errno));
		return -1;
	}
	if (n < 1) {
		fprintf(stderr, "Please enter n greater or equal to 1\n");
		return -1;
	}
	long double max_n = powl(2, sizeof(perm_t) * 8);
	if (n >= max_n) {
		fprintf(stderr, "Please enter n less than %0.Lf\n", max_n);
		return -1;
	}
	// Dynamically allocated to avoid overflowing the stack for large n's
	perm_t* x = malloc(n * sizeof(perm_t));
	perm_t* y = malloc(n * sizeof(perm_t));
	perm_t* z = malloc(n * sizeof(perm_t));
	for (int i = 0; i < n; i++) {
		errno = 0;
		scanf("%"PERM_T_FORMAT, &x[i]);
		if (errno != 0) {
			fprintf(stderr, "Error reading: %s\n", strerror(errno));
			return -1;
		}
		if (x[i] >= n) {
			fprintf(stderr, "Invalid input\n");
			return -1;
		}
	}
	for (int i = 0; i < n; i++) {
		errno = 0;
		scanf("%"PERM_T_FORMAT, &y[i]);
		if (errno != 0) {
			fprintf(stderr, "Error reading: %s\n", strerror(errno));
			return -1;
		}
		if (y[i] >= n) {
			fprintf(stderr, "Invalid input\n");
			return -1;
		}
	}
	int rc;
	struct timespec start_cpu_time;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start_cpu_time);
	if (rc == -1) {
		fprintf(stderr, "Failed to get CPU start time: %s\n", strerror(errno));
		return -1;
	}
	for (int i = 0; i < iterations; i++) {
		permutation_composition(n, x, y, z);
	}
	struct timespec end_cpu_time;
	rc = clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end_cpu_time);
	if (rc == -1) {
		fprintf(stderr, "Failed to get CPU end time: %s\n", strerror(errno));
		return -1;
	}
	unsigned long long cpu_time_ns = get_elapsed_ns(&start_cpu_time, &end_cpu_time);
	free(x);
	free(y);
    printf("%llu\n", cpu_time_ns);
	printf("%"PERM_T_FORMAT, z[0]);
	for (int i = 1; i < n; i++) {
		printf(" %"PERM_T_FORMAT, z[i]);
	}
	printf("\n");
	free(z);
	return 0;
}

unsigned long long get_elapsed_ns(struct timespec* start, struct timespec* end) {
	return (end->tv_sec - start->tv_sec) * 1e+9 + (end->tv_nsec - start->tv_nsec);
}

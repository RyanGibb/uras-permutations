
#include <stdlib.h>

// Datatype used to store permutation indices.
// Should be unsigned to prevent values less than 0.
// perm_t's max value is the highest permutation degree supported.
typedef size_t perm_t;
#define PERM_T_FORMAT "zu"

void permutation_composition(size_t n, perm_t x[], perm_t y[], perm_t z[]);

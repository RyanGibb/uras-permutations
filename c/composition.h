
#include <stdlib.h>

#ifndef COMPOSITION_H
#define COMPOSITION_H

// Datatype used to store permutation indices.
// Should be unsigned to prevent values less than 0,
// and so can be shifted right to divide.
// perm_t's max value is the highest permutation degree supported.
typedef size_t perm_t;
#define PERM_T_FORMAT "zu"

extern size_t cache_size;

void composition_naive(size_t n, perm_t x[], perm_t y[], perm_t z[]);
void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]);

#endif // COMPOSITION_H

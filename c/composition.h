
#include <stdlib.h>

#ifndef COMPOSITION_H
#define COMPOSITION_H

// Datatype used to store permutation indices.
// Should be unsigned for Cooperman & Ma so right divide can be used.
// perm_t's max value is the highest permutation degree supported.
#ifdef SIGNED
	// typedef long perm_t;
	// #define PERM_T_FORMAT "ld"
	// For 4 bytes per index:
		typedef int perm_t;
		#define PERM_T_FORMAT "d"
#else
	// typedef size_t perm_t;
	// #define PERM_T_FORMAT "zu"
	// For 4 bytes per index:
		typedef unsigned int perm_t;
		#define PERM_T_FORMAT "u"
#endif

extern size_t cache_size;

void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]);

#endif // COMPOSITION_H

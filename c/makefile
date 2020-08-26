CC=gcc
CFLAGS=-Wall -std=c99
EXECUTABLES=composition_c_naive composition_c_cooperman_ma composition_c_naive_optimized composition_c_unrolled_2 composition_c_unrolled_4 composition_c_unrolled_8 composition_c_unrolled_16 composition_c_unrolled_32
ASSEMBLY=composition_naive.s composition_cooperman_ma.s composition_naive_optimized.s composition_naive_unrolled_4.s

all: $(EXECUTABLES) $(ASSEMBLY)

clean:
	rm $(EXECUTABLES) *.s


composition_c_naive: main.c composition.h composition_naive.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_naive.c -o composition_c_naive

composition_c_cooperman_ma: main.c composition.h composition_cooperman_ma.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_cooperman_ma.c -o composition_c_cooperman_ma -DCOOPERMAN_AND_MA -lm

composition_c_naive_optimized: main.c composition.h composition_naive_optimized.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_naive_optimized.c -o composition_c_naive_optimized -DSIGNED -march=native 

composition_c_unrolled_2: main.c composition.h composition_naive_unrolled.c
	$(CC) $(CFLAGS) -O3  main.c composition.h composition_naive_unrolled.c -o composition_c_unrolled_2 -DROLLS=2

composition_c_unrolled_4: main.c composition.h composition_naive_unrolled.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_naive_unrolled.c -o composition_c_unrolled_4 -DROLLS=4

composition_c_unrolled_8: main.c composition.h composition_naive_unrolled.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_naive_unrolled.c -o composition_c_unrolled_8 -DROLLS=8

composition_c_unrolled_16: main.c composition.h composition_naive_unrolled.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_naive_unrolled.c -o composition_c_unrolled_16 -DROLLS=16

composition_c_unrolled_32: main.c composition.h composition_naive_unrolled.c
	$(CC) $(CFLAGS) -O3 main.c composition.h composition_naive_unrolled.c -o composition_c_unrolled_32 -DROLLS=32


composition_naive.s: composition_naive.c composition.h
	$(CC) $(CFLAGS) -O3 -S -fverbose-asm composition_naive.c

composition_cooperman_ma.s: composition_cooperman_ma.c composition.h
	$(CC) $(CFLAGS) -O3 -S -fverbose-asm composition_cooperman_ma.c

composition_naive_optimized.s: composition_naive_optimized.c composition.h
	$(CC) $(CFLAGS) -O3 -S -fverbose-asm composition_naive_optimized.c -march=native

composition_naive_unrolled_4.s: composition_naive_unrolled.c composition.h
	$(CC) $(CFLAGS) -O3 -S -fverbose-asm composition_naive_unrolled.c -o composition_naive_unrolled_4.s -DROLLS=4

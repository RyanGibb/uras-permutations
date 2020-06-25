CC=gcc
CFLAGS=-Wall

all: composition_c composition_c_debug composition_naive.s composition_cooperman_ma.s

clean:
	rm composition_c composition_c_debug composition_naive.s composition_cooperman_ma.s


composition_c: main.c composition_naive.c composition_cooperman_ma.c
	$(CC) $(CFLAGS) -O3 main.c composition_naive.c composition_cooperman_ma.c -o composition_c

composition_c_debug: main.c composition_naive.c composition_cooperman_ma.c
	$(CC) $(CFLAGS) -g -Og main.c composition_naive.c composition_cooperman_ma.c -o composition_c_debug


composition_naive.s: composition_naive.c
	$(CC) $(CFLAGS) -O3 -S -fverbose-asm composition_naive.c

composition_cooperman_ma.s: composition_cooperman_ma.c
	$(CC) $(CFLAGS) -O3 -S -fverbose-asm composition_cooperman_ma.c


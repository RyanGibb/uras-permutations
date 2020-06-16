CC=gcc
CFLAGS=-Wall

composition_c: main.c composition_naive.c composition_cooperman_ma.c
	$(CC) -O3 main.c composition_naive.c composition_cooperman_ma.c -o composition_c

composition_c_debug: main.c composition_naive.c composition_cooperman_ma.c
	$(CC) $(CFLAGS) -g -Og main.c composition_naive.c composition_cooperman_ma.c -o composition_c_debug

clean:
	rm composition_c composition_c_debug

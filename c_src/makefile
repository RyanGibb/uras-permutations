CC=gcc
CFLAGS=-g -Wall

composition_c: main.c composition_naive.c composition_cooperman_ma.c
	$(CC) $(CFLAGS) main.c composition_naive.c composition_cooperman_ma.c -o composition_c

clean:
	rm composition_c

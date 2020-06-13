CC=gcc
CFLAGS=-g -Wall

all: composition_naive_c composition_cooperman_ma_256_c composition_cooperman_ma_8388608_c


composition_naive_c: main.o composition_naive.o
	$(CC) $(CFLAGS) main.o composition_naive.o -o composition_naive_c

composition_naive.o: composition_naive.c
	$(CC) $(CFLAGS) -c composition_naive.c


composition_cooperman_ma_256_c: main.o composition_cooperman_ma_256.o
	$(CC) $(CFLAGS) main.o composition_cooperman_ma_256.o -o composition_cooperman_ma_256_c

composition_cooperman_ma_256.o: composition_cooperman_ma.c
	$(CC) $(CFLAGS) -c -D CACHE_SIZE=256 composition_cooperman_ma.c -o composition_cooperman_ma_256.o


composition_cooperman_ma_8388608_c: main.o composition_cooperman_ma_8388608.o
	$(CC) $(CFLAGS) main.o composition_cooperman_ma_8388608.o -o composition_cooperman_ma_8388608_c

composition_cooperman_ma_8388608.o: composition_cooperman_ma.c
	$(CC) $(CFLAGS) -c -D CACHE_SIZE=8388608 composition_cooperman_ma.c -o composition_cooperman_ma_8388608.o


main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	rm *.o composition_naive_c composition_cooperman_ma_256_c composition_cooperman_ma_8388608_c

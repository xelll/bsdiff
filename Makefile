.PHONEY: all clean

all: bsdiff bspatch

bsdiff: bsdiff.c
	gcc bsdiff.c -o bsdiff -llz4

bspatch: lz4.c bspatch.c
	gcc -c lz4.c -o lz4.o
	gcc -c bspatch.c -o bspatch.o
	gcc lz4.o bspatch.o -o bspatch

clean:
	rm -rf *.o bsdiff bspatch

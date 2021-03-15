.PHONEY: all clean

all: bsdiff bspatch

bsdiff: bsdiff.c sha256.c
	gcc -o bsdiff bsdiff.c sha256.c -llz4

bspatch: lz4.c sha256.c bspatch.c 
	gcc -o bspatch lz4.c bspatch.c sha256.c

clean:
	rm -rf *.o bsdiff bspatch

CC=gcc
CFLAGS=-c -Wall

all: A.o B.o linkAll

A.o:
        $(CC) $(CFLAGS) A.c -o A.o
B.o:
        $(CC) $(CFLAGS) B.c -o B.o

linkAll:
        $(CC) -o program A.o B.o


clean:
        rm *.o program

CC = gcc
AS = nasm

all: factorial

factorial: factorial.o
	$(CC) factorial.c factorial.o -o factorial

factorial.o: factorial.s
	$(AS) -f elf64 factorial.s -o factorial.o

clean:
	rm -f factorial factorial.o

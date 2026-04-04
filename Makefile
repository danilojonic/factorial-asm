CC = gcc

all: factorial

factorial: factorial.c factorial.s
	$(CC) factorial.c factorial.s -o factorial

clean:
	rm -f factorial

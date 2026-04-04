# Factorial in x86 Assembly + C

A factorial function implemented in x86-64 Assembly, called from a C program that handles user input and output.

## How it works

The program is split across two files:
- `factorial.c` — handles input/output using standard C
- `factorial.s` — implements the factorial computation in x86-64 Assembly

`factorial.c` declares the assembly function as `extern` and calls it directly, 
demonstrating C-to-Assembly interoperability through the System V AMD64 calling convention.

## Build & Run
```bash
make
./factorial
```

## Requirements
- GCC
- Linux x86-64

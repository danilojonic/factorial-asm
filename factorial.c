#include <stdio.h>

unsigned long factorial(unsigned);

int main()
{
	unsigned n;
	scanf("%u", &n);

	printf("%lu\n", factorial(n));
	
	return 0;
}

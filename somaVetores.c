#include <stdio.h>
#include <stdlib.h>

#define VSIZE 4

int main(int argc, char** argv){

	int a[VSIZE]={1,1,1,1}, b[VSIZE]={2,2,2,2}, c[VSIZE];

	for(int i = 0; i < VSIZE; i++)
		c[i] = b[i] + a[i];

	for(int i = 0; i < VSIZE; i++)
		printf("%d ", a[i]);
	printf("\n");

	for(int i = 0; i < VSIZE; i++)
		printf("%d ", b[i]);
	printf("\n");

	for(int i = 0; i < VSIZE; i++)
		printf("%d ", c[i]);
	printf("\n");

}

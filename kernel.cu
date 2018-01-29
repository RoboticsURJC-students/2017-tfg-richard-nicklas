#include <stdio.h>
#include <stdlib.h>

#include <helper_cuda.h>
#define SIZE 1024

//CUDA enabled vectorAdd
__global__ void vectorAdd(int *a, int *b, int *c, int n)
{
	//int i;

	int i = threadIdx.x;

	//for (i = 0; i < n; ++i)
	if(i<n)

		c[i] = a[i] + b[i];
}

//Normal vectorADD
void classicVectorAdd(int *a, int *b, int *c, int n)
{
	int i;

	for (i = 0; i < n; ++i)

		c[i] = a[i] + b[i];
}

int main()
{


	int *a, *b, *c, *d;
	int *d_a, *d_b, *d_c;

	//allocate CPU
	a = (int *)malloc(SIZE*sizeof(int));
	b = (int *)malloc(SIZE*sizeof(int));
	c = (int *)malloc(SIZE*sizeof(int));
	d = (int *)malloc(SIZE*sizeof(int));

	//allocate GPU
	checkCudaErrors(cudaMalloc(&d_a, SIZE*sizeof(int)));
	checkCudaErrors(cudaMalloc(&d_b, SIZE*sizeof(int)));
	checkCudaErrors(cudaMalloc(&d_c, SIZE*sizeof(int)));

	//initialize CPU
	for (int i = 0; i < SIZE; ++i)
	{
		a[i] = i;
		b[i] = i;
		c[i] = 0;
	}

	//initialize GPU
	checkCudaErrors(cudaMemcpy(d_a, a, SIZE*sizeof(int), cudaMemcpyHostToDevice));
	checkCudaErrors(cudaMemcpy(d_b, b, SIZE*sizeof(int), cudaMemcpyHostToDevice));
	checkCudaErrors(cudaMemcpy(d_c, c, SIZE*sizeof(int), cudaMemcpyHostToDevice));


	//<<<NOfBlocks,ThreadsPerBlock>>>
	vectorAdd<<<1, SIZE>>>(d_a,d_b,d_c, SIZE);

	classicVectorAdd (a, b, c, SIZE);

	//recover result from GPU memory
	cudaMemcpy(d, d_c, SIZE*sizeof(int), cudaMemcpyDeviceToHost);

	for (int i = 0; i < 10; i++)
		printf("d[%d] =%d\n", i,d[i]);

	//free mem
	free(a);
	free(b);
	free(c);
	free(d);

	//free CUDA mem
	checkCudaErrors(cudaFree(d_a));
	checkCudaErrors(cudaFree(d_b));
	checkCudaErrors(cudaFree(d_c));

	return 0;
}

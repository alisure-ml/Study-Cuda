#include <stdio.h>

#define N 12800
#define TPB 640  // 核函数中线程块维度大小


__device__ float my_power(float x1){
    return x1 * x1;
}


__global__ void distanceKernel(float *d_out, int len){
    int i = blockIdx.x * blockDim.x + threadIdx.x;

    d_out[i] = my_power(i);
    printf("i = %2d: power is %f.\n", i, d_out[i]);
}


int main(int argc, char **argv){
    float *d_out = 0;

    cudaMalloc(&d_out, N * sizeof(float));

    distanceKernel<<<N/TPB, TPB>>>(d_out, N);

    cudaFree(d_out);
    return 0;
}

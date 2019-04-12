#include <stdio.h>

#define N 6400
#define TPB 32  // 核函数中线程块维度大小

__device__ float scale(int i, int n){
    return ((float)i)/(n-1);
}


__device__ float distance(float x1, float x2){
    return sqrt((x2 - x1) * (x2 - x1));
}


__global__ void distanceKernel(float *d_out, float ref, int n){
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    float x = scale(i, n);

    d_out[i] = distance(x, ref);
    printf("i = %2d: dist from %f to %f is %f.\n", i, ref, x, d_out[i]);
}


int main(int argc, char **argv){
    float ref = 0.5f;
    float *d_out = 0;

    cudaMalloc(&d_out, N * sizeof(float));

    distanceKernel<<<N/TPB, TPB>>>(d_out, ref, N);

    cudaFree(d_out);
    return 0;
}

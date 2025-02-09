#include <stdio.h>

__global__ void helloFromGPU()
{
    int bix = blockIdx.x;
    int biy = blockIdx.y;
    int tix = threadIdx.x;
    int tiy = threadIdx.y;
    printf("Hello World From GPU in Block: (%d, %d), Thread: (%d, %d)!!\n", bix, biy, tix, tiy);
}

int main(int argc, char **argv)
{
    printf("Hello World from CPU!!\n");

    helloFromGPU<<< 2, 10 >>>();
    cudaDeviceReset();

    return 0;
}

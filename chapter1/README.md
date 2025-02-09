## How to compile

To compile the program, run the following command:

```shell
nvcc hello.cu -o hello
```

## How to select a GPU for Execution

To specify a GPU architecture, use the `-arch` option followed by the compute capability of your GPU.   
You can find the compute capability of your GPU on the [NVIDIA official site](https://developer.nvidia.com/cuda-gpus).  
For example, if you are using a GeForce RTX 3090 Ti, compile the program with:

```shell
nvcc -arch sm_86 hello.cu -o hello
```

## Built-in functions

### cudaDeviceReset()

This function releases the resources related to current device.
However, the OS generally releases the resources at the end of the program.
Therefore, use this function when you explicitly want to release resources.

### cudaDeviceSynchronize()

This function makes the CPU wait for the completion of GPU processes.
This fucntion is mainly used for the error checking.

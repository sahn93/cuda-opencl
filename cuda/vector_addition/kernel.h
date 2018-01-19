#ifndef KERNEL_CUH_
#define KERNEL_CUH_

// host function that invokes kernel
void sum(const float* A, const float* B, float* C, int n_el);

// declare the kernel function
__global__ void kernel_sum(const float* A, const float* B, float* C, int n_el);

#endif

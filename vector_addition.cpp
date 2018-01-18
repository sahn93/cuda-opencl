#include <math.h>
#include <iostream>
#include "cuda_runtime.h"
#include "kernel.h"

using namespace std;

static const int n_el = 512;
static const size_t size = n_el * sizeof(float);

int main() {

    // host memory
    float* h_A = new float [size];
    float* h_B = new float [size];
    float* h_C = new float [size];
    //float* h_A = (float*) malloc(size);
    //float* h_B = (float*) malloc(size);
    //float* h_C = (float*) malloc(size);

    // device memory
    float *d_A, *d_B, *d_C;

    // initialize input vectors
    for (int i=0; i<n_el; i++) {
        h_A[i] = sin(i);
        h_B[i] = cos(i);
    }

    // allocate device vectors in the device memory
    cudaMalloc(&d_A, size);
    cudaMalloc(&d_B, size);
    cudaMalloc(&d_C, size);

    // copy input vectors: host memory --> device memory
    cudaMemcpy(d_A, h_A, size, cudaMemcpyHostToDevice);
    cudaMemcpy(d_B, h_B, size, cudaMemcpyHostToDevice);

    // call kernel function
    sum(d_A, d_B, d_C, n_el);
    
    // copy the output (results) vector from the device (GPU) memory to the host (CPU) memory.
    cudaMemcpy(h_C, d_C, size, cudaMemcpyDeviceToHost);
    
    // free device memory)
    cudaFree(d_A);
    cudaFree(d_B);
    cudaFree(d_C);
    
    // compute the cumulative error
    double err=0;
    for (int i=0; i<n_el; i++) {
        double diff = double ((h_A[i]+h_B[i]) - h_C[i]);
        err += diff*diff;
        // print results for manual checking
        cout << "A+B: " << h_A[i] + h_B[i] << endl;
        cout << "C: " << h_C[i] << endl;
    }
    err = sqrt(err);
    cout << "err: " << err << endl;

    // free host memory
    delete[] h_A;
    delete[] h_B;
    delete[] h_C;

    return cudaDeviceSynchronize();
}

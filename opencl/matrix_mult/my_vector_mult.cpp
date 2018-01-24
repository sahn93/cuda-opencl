#include <iostream>
#include <fstream>
#include <string>
#include <memory>
#include <stdlib.h>

#define __CL_ENABLE_EXCEPTIONS

#include <CL/cl.hpp>

int main(int argc, char** argv) {

    const int MAT_DIM = 3;
    const int MAT_SIZE = MAT_DIM * MAT_DIM;
    unsigned int platform_id=0, device_id=0;

    try {
        int* A = new int[MAT_SIZE];
        int* B = new int[MAT_SIZE];
        int* C = new int[MAT_SIZE];

        for(int i=0; i<MAT_SIZE; ++i) {
            A[i] = i;
            B[i] = i;
        }

        // Query for platforms.
        std::vector<cl::Platform> platforms;
        cl::Platform::get(&platforms);

        // Get a list of devices on this platform.
        std::vector<cl::Device> devices;
        // Select the platform which id is 0.
        platforms[platform_id].getDevices(CL_DEVICE_TYPE_GPU|CL_DEVICE_TYPE_CPU, &devices);

        // Create a context
        cl::Context context(devices);

        // Create a command queue, select the device which id is 0.
        cl::CommandQueue queue = cl::CommandQueue( context, devices[device_id]);

        // Create the memory buffers.
        cl::Buffer bufferA = cl::Buffer(context, CL_MEM_READ_ONLY, MAT_SIZE * sizeof(int));
        cl::Buffer bufferB = cl::Buffer(context, CL_MEM_READ_ONLY, MAT_SIZE * sizeof(int));
        cl::Buffer bufferC = cl::Buffer(context, CL_MEM_WRITE_ONLY, MAT_SIZE * sizeof(int));

        // Copy the input data to the input buffers using the command queue.
        queue.enqueueWriteBuffer( bufferA, CL_FALSE, 0, MAT_SIZE * sizeof(int), A );
        queue.enqueueWriteBuffer( bufferB, CL_FALSE, 0, MAT_SIZE * sizeof(int), B );

        // Read the program source (.cl).
        std::ifstream sourceFile("my_vector_kernel.cl");
        // ifstream to C++ string.
        std::string sourceCode(std::istreambuf_iterator<char>(sourceFile), (std::istreambuf_iterator<char>()));
        // c++ string -> cl::Program::Source.
        cl::Program::Sources source(1, std::make_pair(sourceCode.c_str(), sourceCode.length()));

        // Make program from the source code.
        cl::Program program=cl::Program(context, source);

        // Build the program for the devices
        program.build(devices);

        // Make kernel and give kernel name.
        cl::Kernel matmul_kernel(program, "matmul");

        // Set the kernel arguments
        matmul_kernel.setArg(0, MAT_DIM);
        matmul_kernel.setArg(1, bufferA);
        matmul_kernel.setArg(2, bufferB);
        matmul_kernel.setArg(3, bufferC);

        // Execute the kernel
        cl::NDRange global(MAT_SIZE);
        cl::NDRange local(9);
        queue.enqueueNDRangeKernel(matmul_kernel, cl::NullRange, global, local);

        // Copy the output data back to the host
        queue.enqueueReadBuffer( bufferC, CL_TRUE, 0, MAT_SIZE * sizeof(int), C);

        // Verify the result.
        for (int i=0; i<MAT_DIM; i++) {
            for (int j=0; j<MAT_DIM; j++) {
                std::cout << C[MAT_DIM *i+j] << " "; 
            }
            std::cout << "\n";
        }
    }

    catch(cl::Error err) {
        std::cout << "Error: " << err.what() << "(" << err.err() << ")" << std::endl;
        return( EXIT_FAILURE );
    }
    
    std::cout << "Done.\n";
    return(EXIT_SUCCESS);
}

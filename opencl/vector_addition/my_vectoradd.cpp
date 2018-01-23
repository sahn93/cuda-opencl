#include <iostream>
#include <fstream>
#include <string>
#include <memory>
#include <stdlib.h>

#define __CL_ENABLE_EXCEPTIONS

#include <CL/cl.hpp>

int main(int argc, char** argv) {

    const int VEC_SIZE = 10;
    unsigned int platform_id=0, device_id=0;

    try {
        int* A = new int[VEC_SIZE];
        int* B = new int[VEC_SIZE];
        int* C = new int[VEC_SIZE];

        for(int i=0; i<VEC_SIZE; ++i) {
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
        cl::Buffer bufferA = cl::Buffer(context, CL_MEM_READ_ONLY, VEC_SIZE * sizeof(int));
        cl::Buffer bufferB = cl::Buffer(context, CL_MEM_READ_ONLY, VEC_SIZE * sizeof(int));
        cl::Buffer bufferC = cl::Buffer(context, CL_MEM_WRITE_ONLY, VEC_SIZE * sizeof(int));

        // Copy the input data to the input buffers using the command queue.
        queue.enqueueWriteBuffer( bufferA, CL_FALSE, 0, VEC_SIZE * sizeof(int), A );
        queue.enqueueWriteBuffer( bufferB, CL_FALSE, 0, VEC_SIZE * sizeof(int), B );

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
        cl::Kernel vecadd_kernel(program, "vecmul");

        // Set the kernel arguments
        vecadd_kernel.setArg(0, bufferA);
        vecadd_kernel.setArg(1, bufferB);
        vecadd_kernel.setArg(2, bufferC);

        // Execute the kernel
        cl::NDRange global(VEC_SIZE);
        cl::NDRange local(10);
        queue.enqueueNDRangeKernel(vecadd_kernel, cl::NullRange, global, local);

        // Copy the output data back to the host
        queue.enqueueReadBuffer( bufferC, CL_TRUE, 0, VEC_SIZE * sizeof(int), C);

        // Verify the result.
        for (int i=0; i<VEC_SIZE; i++) {
            std::cout << C[i] << std::endl;
        }
    }

    catch(cl::Error err) {
        std::cout << "Error: " << err.what() << "(" << err.err() << ")" << std::endl;
        return( EXIT_FAILURE );
    }
    
    std::cout << "Done.\n";
    return(EXIT_SUCCESS);
}

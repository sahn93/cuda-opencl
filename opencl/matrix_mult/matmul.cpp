#include<iostream>
#include<stdlib.h>
#include <iomanip>

using namespace std;
//Array size to access
#define DATA_SIZE 3 

void mmult_cpu( int *in1,   // Input matrix 1
                int *in2,   // Input matrix 2
                int *out,   // Output matrix (out = A x B)
                int dim     // Matrix size of one dimension
              )  
{
    //Performs matrix multiplication out = in1 x in2
    for (int i = 0; i < dim; i++){
        for (int j = 0; j < dim; j++){
            for (int k = 0; k < dim; k++){
                out[i * dim + j] += in1[i * dim + k] * in2[k * dim  + j];
            }
        }
    }

    std::cout << "matrix 1 * matrix 2" << std::endl;
    for (int i = 0; i < dim; i++){
        for (int j = 0; j < dim; j++){
            std::cout << setw(5) << out[dim * i + j] << " ";
        }
        std::cout << std::endl;
    }

}

int main(int argc, char** argv)
{
    int size = DATA_SIZE;
    size_t matrix_size_bytes = sizeof(int) * size * size;

    //Allocate memory
    int *source_in1 = (int *) malloc(matrix_size_bytes);
    int *source_in2 = (int *) malloc(matrix_size_bytes);
    int *source_cpu_results = (int *) malloc(matrix_size_bytes);

    //Creates the data
    for(int index = 0; index < size * size; index++){
        source_in1[index] = index;
        source_in2[index] = index * index;
        source_cpu_results[index] = 0;
    }
    
    std::cout << "input matrix 1" << std::endl;
    for (int i = 0; i < size; i++){
        for (int j = 0; j < size; j++){
            std::cout << setw(5) << source_in1[size * i + j] << " ";
        }
        std::cout << std::endl;
    }

    std::cout << "input matrix 2" << std::endl;
    for (int i = 0; i < size; i++){
        for (int j = 0; j < size; j++){
            std::cout << setw(5) << source_in2[size * i + j] << " ";
        }
        std::cout << std::endl;
    }


    //Function call to perform matrix multiplication
    mmult_cpu(source_in1, source_in2, source_cpu_results, size);

    std::cout << "Matrix Multiplication completed." << std::endl;

    return 0;
}

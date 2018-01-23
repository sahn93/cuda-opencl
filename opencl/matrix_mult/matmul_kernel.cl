kernel void matmul(global int dim, global int* A, global int* B, global int* C) {
    const int idx = get_global_id(0);
    for (int i=0; i<dim; i++) {
        for (int j=0; j<dim; j++) {
            for (int k=0; k<dim; k++) {
                C[i * dim + j] += A[i * dim + k] * B[j + dim * k];
            }
        }
    }
}

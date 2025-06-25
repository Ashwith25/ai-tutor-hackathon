
import cupy as cp
import time

# Create two large matrices on the GPU
size = 4000
matrix_a = cp.random.rand(size, size).astype(cp.float32)
matrix_b = cp.random.rand(size, size).astype(cp.float32)
cp.cuda.runtime.deviceSynchronize() # Wait for matrices to be created

# Perform matrix multiplication
result = cp.dot(matrix_a, matrix_b)
cp.cuda.runtime.deviceSynchronize() # Wait for the computation to complete

print(f"GPU (CuPy) execution finished. Shape: {result.shape}")

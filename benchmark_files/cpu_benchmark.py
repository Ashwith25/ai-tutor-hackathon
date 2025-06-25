
import numpy as np
import time

# Create two large matrices
# The problem size is now much larger (30000*30000)
size = 30000
matrix_a = np.random.rand(size, size).astype(np.float32)
matrix_b = np.random.rand(size, size).astype(np.float32)

# Perform matrix multiplication
result = np.dot(matrix_a, matrix_b)

print(f"CPU (NumPy) execution finished. Shape: {result.shape}")

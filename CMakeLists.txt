cmake_minimum_required(VERSION 3.19)

set(CMAKE_CUDA_STANDARD 14)
set(CMAKE_CUDA_COMPILER "/usr/local/cuda/bin/nvcc")
project(CUDA LANGUAGES C CXX CUDA)

add_executable(CUDA main.cu)
add_executable(Mul mul.cu)
set_target_properties(
        CUDA
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
set_target_properties(
        Mul
        PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
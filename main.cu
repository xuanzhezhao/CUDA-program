#include <iostream>
#include "device_launch_parameters.h"
int main() {
    std::cout << "Hello, World!" << std::endl;
    int deviceCount;
    cudaGetDeviceCount(&deviceCount);
    for(int i=0;i<deviceCount;i++)
    {
        cudaDeviceProp devProp;
        cudaGetDeviceProperties(&devProp, i);
        std::cout << "======================================================" << std::endl;
        std::cout << "GPU device " << i << ": " << devProp.name << std::endl;
        std::cout << "Global GPU RAM: " << devProp.totalGlobalMem / 1024 / 1024 << "MB" << std::endl;
        std::cout << "Num of SM:" << devProp.multiProcessorCount << std::endl;
        std::cout << "每个线程块的共享内存大小:" << devProp.sharedMemPerBlock / 1024.0 << " KB" << std::endl;
        std::cout << "每个线程块的最大线程数:" << devProp.maxThreadsPerBlock << std::endl;
        std::cout << "设备上一个线程块（Block）种可用的32位寄存器数量： " << devProp.regsPerBlock << std::endl;
        std::cout << "每个EM的最大线程数:" << devProp.maxThreadsPerMultiProcessor << std::endl;
        std::cout << "每个EM的最大线程束数:" << devProp.maxThreadsPerMultiProcessor / 32 << std::endl;
        std::cout << "设备上多处理器的数量:" << devProp.multiProcessorCount << std::endl;
        std::cout << "======================================================" << std::endl;}
        return 0;
}

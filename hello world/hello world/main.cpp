#include <stdio.h>
#include "device_launch_parameters.h"
#include "cuda_runtime.h"
#include "windows.h"



extern "C" int Hello();

int main(void)
{
	printf("Hello World From GPU!\n");

	Hello();

	cudaDeviceReset();

	system("pause");

}

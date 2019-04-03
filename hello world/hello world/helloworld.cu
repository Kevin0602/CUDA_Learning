#include <stdio.h>
#include "device_launch_parameters.h"
#include "cuda_runtime.h"

__global__ void HelloFromGPU(void)
{
	printf("Hello World From GPU!\n");
}


extern "C" int Hello()
{
	HelloFromGPU <<<2,2>>> ();

	return 0;
}
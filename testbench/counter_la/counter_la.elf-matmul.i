# 0 "../../firmware/matmul.c"
# 1 "/home/test/caravel-soc_fpga-lab/lab-sdram/testbench/counter_la//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "../../firmware/matmul.c"
# 1 "../../firmware/matmul.h" 1




 int __attribute__ ( ( section ( ".adder" ) ) ) A[4*4] = {0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
   0, 1, 2, 3,
 };
 int __attribute__ ( ( section ( ".adder" ) ) ) B[4*4] = {1, 2, 3, 4,
  5, 6, 7, 8,
  9, 10, 11, 12,
  13, 14, 15, 16,
 };
 int result[4*4];
# 2 "../../firmware/matmul.c" 2

int* __attribute__ ( ( section ( ".mprjram" ) ) ) matmul()
{
 int i=0;
 int j;
 int k;
 int sum;
 int kk;
 unsigned int count = 0;
 for (i=0; i<4; i++){
  for (j=0; j<4; j++){
   sum = 0;
   for(k = 0;k<4;k++)
    sum += A[(i*4) + k] * B[(k*4) + j];
   result[(i*4) + j] = sum;
  }
 }
 return result;
}

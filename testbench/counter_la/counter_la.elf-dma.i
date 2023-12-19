# 0 "../../firmware/dma.c"
# 1 "/home/ubuntu/SoCLab/course-lab_d/lab-sdram/testbench/counter_la//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "../../firmware/dma.c"
# 1 "../../firmware/dma.h" 1


# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 1 3 4
# 11 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 3 4
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 1 3 4
# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4

# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 2 3 4
# 4 "../../firmware/dma.h" 2


# 5 "../../firmware/dma.h"
volatile uint32_t *inst_ptr;
volatile uint32_t inst_addr = 0x30000000;
# 2 "../../firmware/dma.c" 2

void __attribute__ ( ( section ( ".mprjram" ) ) ) dma(
  uint32_t start, uint32_t end)
{




    uint32_t inst;

    inst = 0x00000000;

    inst = inst + (end & 0x000000ff);
 inst = inst + (end & 0x00000300) << 12;

    inst = inst + (start & 0x000000ff) << 8;
 inst = inst + (start & 0x00000300) << 16;

    inst_ptr = (volatile uint32_t*)inst_addr;
    *inst_ptr = inst;
}

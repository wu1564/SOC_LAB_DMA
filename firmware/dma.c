#include "dma.h"

void __attribute__ ( ( section ( ".mprjram" ) ) ) dma(
  uint32_t start, uint32_t end)
{

    // initialize instruction buffer
	// layout: || 8-bit || 4-bit | 4-bit || 8-bit || 8-bit || 
	// layout: || undefine || start bank | end bank || start addr || end addr ||
    uint32_t inst;

    inst = 0x00000000;

    inst = inst + (end & 0x000000ff);
	inst = inst + (end & 0x00000300) << 12;

    inst = inst + (start & 0x000000ff) << 8;
	inst = inst + (start & 0x00000300) << 16;

    inst_ptr = (volatile uint32_t*)inst_addr;
    *inst_ptr = inst; 
}
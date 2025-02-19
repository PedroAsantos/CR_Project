#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "mb_interface.h"
#include "xuartlite_l.h"

#define N 16

int is_big_endian(void)
{
    union {
        uint32_t i;
        char c[4];
    } e = { 0x01000000 };

    return e.c[0];
}

uint32_t swap_uint32( uint32_t val )
{
    val = ((val << 8) & 0xFF00FF00 ) | ((val >> 8) & 0xFF00FF );
    return (val << 16) | (val >> 16);
}

int main(){

    init_platform();

    xil_printf("\n\r%sHello Stream Coprocessor - MD5\n\r");

   	char message[] = "o maia esta sempre a reinar";
   	size_t initial_len = strlen(message);
	xil_printf("initial_len-> %d \n",initial_len );

   	uint64_t initial_len_bits = strlen(message)*8;

   	int numberOfBlocks = (int)ceil((initial_len_bits+65)/512.0);
	xil_printf("numberOfBlocks-> %d \n",numberOfBlocks );
   	char *block;
	size_t length = 64;

   	block = (char *)calloc(length, sizeof(char));

   	/* Check to see if we were successful */

	if (block == NULL)
	{
	    /* We were not so display a message */
	    printf("Could not allocate required memory\n");

	    /* And exit */
	    exit(1);
	}

	int i;
	int c;
	int flag=0;
	int subBlocksToSend=64;
	int maximunBlocks=5;
	if(numberOfBlocks<maximunBlocks+1){
		for( i = 0; i < numberOfBlocks; i = i + 1 ){
			//if it is last block
			 memset(block, 0, 64);
			if(i==numberOfBlocks-1){
				//padding
				//copy messsage to block
				xil_printf("\nLast Block!");

				if(flag!=0){
					flag=0;

				}else{
					memcpy(block,message+(i*64),(initial_len-(i*64)));
					//put 1 in the end of message.
					block[initial_len-(i*64)] = 128;

					//put size message on end of block
				}
				memcpy(block + 56, &initial_len_bits, 8);

				//sending Last Block
				for( c = 0; c < subBlocksToSend ; c = c + 4 ){
					unsigned int tempInt=*((unsigned int*)(block+c));
					//xil_printf("\ntempInt-> %8x", tempInt);
					xil_printf("\ntempIntSwapped-> %8x", swap_uint32(tempInt));
					//xil_printf("\nDecode-> %08x", *((unsigned int*)(block+c)));
					putfsl(swap_uint32(tempInt), 0);
				}

				if(i+1<maximunBlocks){
					 memset(block, 0, 64);
					 for( c = 0; c < subBlocksToSend ; c = c + 4 ){
						xil_printf("\nDecode-> %08x", *((unsigned int*)(block+c)));
						putfsl(*((unsigned int*)(block+c)), 0);
					 }
				}

			}else{
				xil_printf("More than one block!" );
				//if(initial_len>(i*64)){
				if(initial_len%64<56){
					memcpy(block,message+(i*64),64);
					for( c = 0; c < subBlocksToSend ; c = c + 4 ){
						unsigned int tempInt=*((unsigned int*)(block+c));
						//xil_printf("\ntempInt-> %8x", tempInt);
						xil_printf("\ntempIntSwapped-> %8x", swap_uint32(tempInt));
						//xil_printf("\nDecode-> %08x", *((unsigned int*)(block+c)));
						putfsl(swap_uint32(tempInt), 0);
					}
				}else{
					//memcpy(block,message+(i*initial_len),initial_len);
					memcpy(block,message+(i*64),(initial_len-(i*64)));

					block[initial_len-(i*64)] = 128;
					flag=1;
					for( c = 0; c < subBlocksToSend ; c = c + 4 ){
						unsigned int tempInt=*((unsigned int*)(block+c));
						//xil_printf("\ntempInt-> %8x", tempInt);
						xil_printf("\ntempIntSwapped-> %8x", swap_uint32(tempInt));
						//xil_printf("\nDecode-> %08x", *((unsigned int*)(block+c)));
						putfsl(swap_uint32(tempInt), 0);
					}

				}


			}
		}
	}else{
		xil_printf("\n The maximum number of blocks was exceeded. The maximum number is 5.");
	}


	int r1,r2,r3,r4;

	//putfsl("", 0);
	getfsl(r4, 0);
	//xil_printf("\n%08x", r);

	getfsl(r3, 0);
	//xil_printf("\n%08x", r);

	getfsl(r2, 0);
	//xil_printf("\n%08x", r);

	getfsl(r1, 0);
	//xil_printf("\n%08x", r);
	xil_printf("\n");
	xil_printf("%08x", r1);
	xil_printf("%08x", r2);
	xil_printf("%08x", r3);
	xil_printf("%08x", r4);

	xil_printf("\n\rDone!");

    cleanup_platform();
    return 0;
}

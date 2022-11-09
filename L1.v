`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2019 02:54:35
// Design Name: 
// Module Name: L2_CACHE_MEMORY
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module L1_CACHE_MEMORY();
// parameter no_of_l1_ways=4;          //No. of ways in the set ...4 as it is 4-way set-associative here
// parameter no_of_l1_ways_bits=2;     //No. of bits required to describe the way to which a block belongs =2 as 2^2=4
// parameter no_of_l1_blocks=64;      //No. of lines in L1 block ...we can also describe it as the number of sets in L1 Cache
// parameter no_of_bytes_l1_block=16;  //No. of bytes in a single line on L1 block=No. of blocks in a single line * No. of bytes in a block =4*4=16
// parameter l1_block_bit_size=128;    //The size of L1 block line in bits = NO. of blocks in a single line * No. of bits in a block=4*16=128
// parameter byte_size=8;              //The no. of bits in a byte
// parameter no_of_address_bits=16;       //The number of bits to represent an address
// parameter no_of_l1_index_bits=4;        //THe number of index bits to describe a line on L1 Block...Here 7 as 2^7=128
// parameter no_of_blkoffset_bits=2;          //The number of bits to describe the byte in a block...2^2=4
// parameter no_of_l1_tag_bits=10;             //No. of tag bits = No. of address bits  - No. of index bits - NO. of block offset bits= 32-7-2=23

parameter no_of_l1_ways = 4;
parameter no_of_l1_ways_bits = 2;
parameter no_of_l1_words = 4;
parameter l1_size = 2048;
parameter no_of_l1_lines = 64;
parameter l1_line_size = 32;
parameter no_of_l1_sets = 16;
parameter word_size_bits = 8;
parameter no_of_address_bits = 16;
parameter no_of_offset_bits = 2;
parameter no_of_set_bits = 4;
parameter no_of_tag_bits = 10;

reg [l1_block_bit_size-1:0]l1_cache_memory[0:no_of_l1_blocks-1];        //An array where each element if of l1_block_bit_size bits..for memory in L1 Cache
reg [(no_of_l1_tag_bits*no_of_l1_ways)-1:0]l2_tag_array[0:no_of_l1_blocks-1];  //The tag array where each element contains no_of_l1_tag_bits*NO_of_l1_ways bits
reg [no_of_l1_ways-1:0]l1_valid[0:no_of_l1_blocks-1];      //Is valid array where each element is of no_of_l1_ways bits
reg [no_of_l1_ways*no_of_l1_ways_bits-1:0]lru[0:no_of_l1_blocks-1];     //LRU array where each element is of no_of_l1_ways*no_of_l1_ways_bits bits

initial 
begin: initialization
    integer i;
    for  (i=0;i<no_of_l1_blocks;i=i+1)
    begin
        l1_valid[i]=0;          //initially the cache is empty
        l1_tag_array[i]=0;         //set tag to some random
        lru[i]=8'b11100100;         //set the lru values to some random permutation of 0, 1, 2, 3 initially
    end
end
endmodule
`timescale 1ns / 1ps

module CacheControllerTB();
parameter n_pa_bits = 32;    
    reg clk, reset, halt;
    reg [n_pa_bits:0] instruction;
    wire fetch;
    wire [13:0] hit_count;
    wire [13:0] miss_count;

	CacheController tb(clk, reset, halt, instruction, fetch, hit_count, miss_count);

	initial begin
		clk = 0;
		halt = 0;
		forever begin
			#1 clk = ~clk;
		end
	end

	initial begin
		reset = 1;
		reset = 0; #1;
		reset = 1;
		instruction = 33'b100011111111111111111111101111000; #48; 
		instruction = 33'b000011111111111111111111110000000; #48; 
		instruction = 33'b000011111111111111111111110011000; #48;
		
		//#1640;
		$finish;
	end
endmodule
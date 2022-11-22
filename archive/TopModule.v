`timescale 1ns / 1ps

module TopModule(
	input clk_in, reset, halt_in,
	input [7:0] segments1, segments2
	output reg [13:0] hit_count,
	output reg [13:0] miss_count
	); // fpga i/o
    
    wire halt;
    wire fetch = 0;
    wire [32:0] instruction;
    reg [12:0] prog_count = 0;

    assign halt = halt_in | (prog_count == 99);
    
    BRAM_Wrapper bw(prog_count, clk, 0, instruction, 1, 0); // (addr, clk, din, dout, en, wen)
    CacheController cc(clk, reset, halt, instruction, fetch, hit_count, miss_count);

    BCD_Display bcd1(clk_in, hit_count[7:0], segments1, digit_en1);
    BCD_Display bcd2(clk_in, miss_count[7:0], segments2, digit_en2);
    
    always @(posedge clk) begin
    	if (reset) begin
    		prog_count = 0;
    	end
    	else begin
    		if (!halt && fetch) begin
    			prog_count = prog_count + 1;
			end
    	end
    end
endmodule

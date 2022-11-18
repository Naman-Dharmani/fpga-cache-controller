`timescale 1ns / 1ps

module TopModule(
	input clk_in, reset, halt_in,
	output [7:0] segments,
	output [3:0] digit_en,
	output [15:0] leds
); // fpga i/o
    
    wire halt;
    wire fetch;
    wire [32:0] instruction;
   	wire [13:0] miss_count, hit_count;
    reg [12:0] prog_count;

    assign halt = halt_in | (prog_count == 201);
    
    bram_wrapper bramWrapper(prog_count, clk, 0, instruction, 1, 0); // (addr, clk, din, dout, en, wen)
    CacheController cacheController(clk, reset, halt, instruction, fetch, hit_count, miss_count);

    ClockDivider clockDivider(clk_in, clk);
    BcdDisplay bcd1(clk_in, miss_count[7:0], segments, digit_en);
    assign leds = instruction[15:0];
//    BcdDisplay bcdDisplay(clk_in, miss_count[7:0], segments, digit_en);
    
    always @(posedge clk or negedge reset) begin
    	if (!reset) begin
    		prog_count = 0;
    	end
    	else begin
    		if (!halt && fetch) begin
    			prog_count = prog_count + 1;
			end
    	end
    end
endmodule

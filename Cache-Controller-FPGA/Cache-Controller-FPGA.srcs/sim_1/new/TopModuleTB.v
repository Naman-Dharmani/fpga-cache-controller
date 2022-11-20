`timescale 1ns / 1ps

module TopModuleTB();
	reg clk_in, reset, halt_in;
	wire [7:0] segments;
    wire [3:0] digit_en;
    wire [15:0] leds;

	TopModule tb(clk_in, reset, halt_in, segments, digit_en, leds);

	initial begin
		clk_in = 0;
		halt_in = 0;
		forever begin
			#1 clk_in = ~clk_in;
		end
	end

	initial begin
		reset = 1;
		reset = 0; #1;
		reset = 1;
		
//		#3000000;
//		$finish;
	end
endmodule
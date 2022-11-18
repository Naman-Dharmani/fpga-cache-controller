`timescale 1ns / 1ps

module BcdDisplay(
    input clk, // 100 MHz
    input [7:0] Number,
    output [7:0] Segments,
    output [3:0] Digit_En
    );
    
    parameter clk_divider = 100000000/800/2;
    
    // Clock + Counter logic
    reg [16:0] count;
    always @(posedge clk) count <= count + 1;

    reg [1:0] Sel;
    always @(posedge count[16]) Sel <= Sel + 1;
    
    wire [3:0] Ones, Tens, Hundreds;
    wire [3:0] BCD_Digit;
    
    Decoder A1(Sel, Digit_En);
    
    BinBcdConverter A2(Number, Hundreds[1:0], Tens, Ones);
    
    Mux_4to1 A3(Sel, Ones, Tens, Hundreds, 4'b0000, BCD_Digit);
    
    Bin_7Segment_Display A4(BCD_Digit, Segments);
endmodule


module Decoder(
    input [1:0] Sel,
    output reg [3:0] Out
    );
    
    always @(Sel) begin
        case(Sel)
            2'b00: Out <= 4'b1110; 
            2'b01: Out <= 4'b1101;
            2'b10: Out <= 4'b1011;
            2'b11: Out <= 4'b0111;
        endcase
    end
endmodule


module Mux_4to1(
    input [1:0] Sel,
    input [3:0] In0, In1, In2, In3,
    output reg [3:0] Out
    );
    
    always @(Sel, In0, In1, In2, In3) begin
        case(Sel)
            2'b00: Out <= In0;
            2'b01: Out <= In1;
            2'b10: Out <= In2;
            2'b11: Out <= In3;
        endcase
    end
endmodule


module Bin_7Segment_Display(
    input [3:0] Bin,
    output reg [7:0] Segments
    );
    
    always @(Bin) begin
        case(Bin)
            4'b0000: Segments <= 8'b11000000; // MSB: Decimal Dot; // LSB : Segment A; Common anode leds; 
            4'b0001: Segments <= 8'b11111001;
            4'b0010: Segments <= 8'b10100100;
            4'b0011: Segments <= 8'b10110000;
            4'b0100: Segments <= 8'b10011001;
            4'b0101: Segments <= 8'b10010010;
            4'b0110: Segments <= 8'b10000010;
            4'b0111: Segments <= 8'b11111000;
            4'b1000: Segments <= 8'b10000000;
            4'b1001: Segments <= 8'b10010000;
        endcase
    end
endmodule

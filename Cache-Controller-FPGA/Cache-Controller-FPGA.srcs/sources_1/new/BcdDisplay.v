`timescale 1ns / 1ps

module BcdDisplay(
    input clk, // 100 MHz
    input [12:0] Number1,
    input [12:0] Number2,
    output [7:0] Segments,
    output [7:0] Digit_En
    );
    
    // parameter clk_divider = 100000000/800/2;
    
    // Clock + Counter logic
    reg [16:0] count;
    always @(posedge clk) count <= count + 1;

    reg [1:0] Sel;
    always @(posedge count[10]) Sel <= Sel + 1;
    
    wire [3:0] BCD_Digit;

    // wire [3:0] Ones, Tens, Hundreds;
    wire [15:0] o_BCD;
    reg [15:0] r_BCD;
    wire i_Start = count[6];
    
    Decoder A1({count[12], Sel}, Digit_En);
    
    Binary_to_BCD #(.INPUT_WIDTH(13), .DECIMAL_DIGITS(4)) A2(clk, (count[12] ? Number1 : Number2), i_Start, o_BCD, o_DV);
    
    Mux_4to1 A3(Sel, r_BCD, BCD_Digit);
    
    Bin_7Segment_Display A4(BCD_Digit, Segments);

    always @(o_DV) begin
        if(o_DV)
            r_BCD <= o_BCD;
        else
            r_BCD <= r_BCD;
    end
endmodule


module Decoder(
    input [2:0] Sel,
    output reg [7:0] Out
    );
    
    always @(Sel) begin
        case(Sel)
            3'b000: Out <= 8'b11111110;
            3'b001: Out <= 8'b11111101;
            3'b010: Out <= 8'b11111011;
            3'b011: Out <= 8'b11110111;
            3'b100: Out <= 8'b11101111;
            3'b101: Out <= 8'b11011111;
            3'b110: Out <= 8'b10111111;
            3'b111: Out <= 8'b01111111;
        endcase
    end
endmodule


module Mux_4to1(
    input [1:0] Sel,
    input [15:0] In,
    output reg [3:0] Out
    );
    
    always @(Sel, In) begin
        case(Sel)
            2'b00: Out <= In[0+:4];
            2'b01: Out <= In[4+:4];
            2'b10: Out <= In[8+:4];
            2'b11: Out <= In[12+:4];
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

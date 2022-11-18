`timescale 1ns / 1ps

module BinBcdConverter(
    input [7:0] A,
    output [1:0] Hundreds,
    output [3:0] Tens,
    output [3:0] Ones
    );
    
    wire [3:0] c1, c2, c3, c4, c5, c6, c7;
    wire [3:0] d1, d2, d3, d4, d5, d6, d7;
    
    assign d1 = {1'b0, A[7:5]};
    assign d2 = {c1[2:0], A[4]};
    assign d3 = {c2[2:0], A[3]};
    assign d4 = {c3[2:0], A[2]};
    assign d5 = {c4[2:0], A[1]};
    assign d6 = {1'b0, c1[3], c2[3], c3[3]};
    assign d7 = {c6[2:0], c4[3]};
    
    Shift_Add3_ALG M1(d1, c1);
    Shift_Add3_ALG M2(d2, c2);
    Shift_Add3_ALG M3(d3, c3);
    Shift_Add3_ALG M4(d4, c4);
    Shift_Add3_ALG M5(d5, c5);
    Shift_Add3_ALG M6(d6, c6);
    Shift_Add3_ALG M7(d7, c7);
    
    assign Ones = {c5[2:0], A[0]};
    assign Tens = {c7[2:0], c5[3]};
    assign Hundreds = {c6[3], c7[3]};
endmodule


module Shift_Add3_ALG(
    input [3:0] In, 
    output reg [3:0] Out
    );
    
    always @(In) begin
        case(In)
            4'b0000: Out <= 4'b0000;
            4'b0001: Out <= 4'b0001;
            4'b0010: Out <= 4'b0010;
            4'b0011: Out <= 4'b0011;
            4'b0100: Out <= 4'b0100;
            4'b0101: Out <= 4'b1000;
            4'b0110: Out <= 4'b1001;
            4'b0111: Out <= 4'b1010;
            4'b1000: Out <= 4'b1011;
            4'b1001: Out <= 4'b1100;
            default: Out <= 4'b0000;
        endcase
    end
endmodule

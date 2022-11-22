`timescale 1ns / 1ps

module ClockDivider(clk_in, freq_ctrl, clk_out);
    parameter FREQ0 = 1000;
    parameter FREQ1 = 10000;

    input clk_in, freq_ctrl;
    output reg clk_out;
        
    reg [26:0] counter = 0;
    
    always @(posedge clk_in) begin
        counter <= counter + 1;
        if(counter == (freq_ctrl ? (50_000_000 / FREQ1) : (50_000_000 / FREQ0) )) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end
    end
endmodule

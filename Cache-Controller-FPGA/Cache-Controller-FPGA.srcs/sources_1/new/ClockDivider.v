`timescale 1ns / 1ps

module ClockDivider(clk_in, clk_out);
    parameter FREQ = 10;

    input clk_in;
    output reg clk_out;
        
    reg [26:0] counter = 0;
    
    always @(posedge clk_in) begin
        counter <= counter + 1;
        if(counter == (50_000_000 / FREQ)) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end
    end
endmodule

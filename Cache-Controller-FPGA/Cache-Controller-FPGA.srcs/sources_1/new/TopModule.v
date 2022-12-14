`timescale 1ns / 1ps

module TopModule(
    input clk_in, reset, halt_in, freq_ctrl,
    output [7:0] segments,
    output [7:0] digit_en,
    output [15:0] leds
); // fpga i/o

    wire halt;
    wire fetch;
    wire [32:0] instruction;
    wire [12:0] miss_count, hit_count;
    reg [12:0] prog_count;

    assign halt = halt_in | (prog_count == 8191);

//    bram_wrapper bramWrapper(prog_count, clk, 0, instruction, 1, 0); // (addr, clk, din, dout, en, wen) //200 intructions
//    bram2_wrapper bramWrapper(prog_count, clk, 0, instruction, 1, 0); //first 8192 intructions of swim.trace
    bram3_wrapper bramWrapper(prog_count, clk, 0, instruction, 1, 0); //next 8192 intructions of swim.trace
    CacheController cacheController(clk, reset, halt, instruction, fetch, hit_count, miss_count);

    ClockDivider clockDivider(clk_in, freq_ctrl, clk);
    BcdDisplay bcd1(clk_in, hit_count, miss_count, segments, digit_en);
    assign leds = instruction[15:0];

    always @(posedge clk) begin
        if (!reset) begin
            prog_count <= 0;
        end
        else begin
            if (!halt & fetch) begin
                prog_count <= prog_count + 1;
            end
        end
    end
endmodule

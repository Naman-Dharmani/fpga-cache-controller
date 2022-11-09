`timescale 1ns / 1ps

module comparator (
    input [9:0] pa_addr_tag,
    input [9:0] tag_dir_tag,
    output equal
);
    assign equal = (pa_addr_tag == tag_dir_tag) ? 1 : 0;
endmodule

module TagComp(
    input [pa_tag:0] pa_addr,
    input [tag_dir_valid_index:0] tag_dir [0:tag_dir_rows],
    output hit_miss,
    output [6:0] tag_dir_row_index
);
parameter pa_offset = 1;
parameter pa_set = 5;
parameter pa_tag = 15;
parameter tag_dir_set = 3;
parameter tag_dir_line = 5;
parameter tag_dir_tag = 15;
parameter tag_dir_dirty = 16;
parameter tag_dir_valid = 17;
parameter tag_dir_rows = 64;
parameter N = 4;

reg set_bits;
assign set_bits = pa_addr[pa_index:pa_offset+1];

genvar i;

generate
    for (i = 0; i < N; i = i + 1) begin
        comparator tag_compare(pa_addr[pa_tag:pa_set+1], tag_dir[][tag_dir_tag:tag_dir_line+1], equal)
    end
endgenerate

// always @ (pa_addr) begin

// end
    
endmodule

module load(addr, tag, offset, index,clk);
input clk;
input [5:0] addr;

output [1:0] tag;
output [1:0] index;
output [1:0] offset;

always @(posedge clk)
begin 
    offset <= addr[1:0];
    index <= addr[3:2];
    tag <= addr[5:4];
end

endmodule
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 18 16:39:43 2022
// Host        : kite running 64-bit CachyOS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/Cache-Controller-FPGA.sim/sim_1/impl/timing/xsim/CacheControllerTB_time_impl.v
// Design      : CacheController
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "ae5afff6" *) (* n_age_index = "22" *) (* n_blk_bits = "4" *) 
(* n_dirty_index = "24" *) (* n_lines = "256" *) (* n_pa_bits = "32" *) 
(* n_set_bits = "6" *) (* n_tag_bits = "22" *) (* n_valid_index = "25" *) 
(* NotValidForBitStream *)
module CacheController
   (clk,
    reset,
    halt,
    instruction,
    fetch,
    hit_count,
    miss_count);
  input clk;
  input reset;
  input halt;
  input [32:0]instruction;
  output fetch;
  output [13:0]hit_count;
  output [13:0]miss_count;

  wire fetch;
  wire [13:0]hit_count;
  wire [13:0]miss_count;

initial begin
 $sdf_annotate("CacheControllerTB_time_impl.sdf",,,,"tool_control");
end
  OBUF fetch_OBUF_inst
       (.I(1'b0),
        .O(fetch));
  OBUF \hit_count_OBUF[0]_inst 
       (.I(1'b0),
        .O(hit_count[0]));
  OBUF \hit_count_OBUF[10]_inst 
       (.I(1'b0),
        .O(hit_count[10]));
  OBUF \hit_count_OBUF[11]_inst 
       (.I(1'b0),
        .O(hit_count[11]));
  OBUF \hit_count_OBUF[12]_inst 
       (.I(1'b0),
        .O(hit_count[12]));
  OBUF \hit_count_OBUF[13]_inst 
       (.I(1'b0),
        .O(hit_count[13]));
  OBUF \hit_count_OBUF[1]_inst 
       (.I(1'b0),
        .O(hit_count[1]));
  OBUF \hit_count_OBUF[2]_inst 
       (.I(1'b0),
        .O(hit_count[2]));
  OBUF \hit_count_OBUF[3]_inst 
       (.I(1'b0),
        .O(hit_count[3]));
  OBUF \hit_count_OBUF[4]_inst 
       (.I(1'b0),
        .O(hit_count[4]));
  OBUF \hit_count_OBUF[5]_inst 
       (.I(1'b0),
        .O(hit_count[5]));
  OBUF \hit_count_OBUF[6]_inst 
       (.I(1'b0),
        .O(hit_count[6]));
  OBUF \hit_count_OBUF[7]_inst 
       (.I(1'b0),
        .O(hit_count[7]));
  OBUF \hit_count_OBUF[8]_inst 
       (.I(1'b0),
        .O(hit_count[8]));
  OBUF \hit_count_OBUF[9]_inst 
       (.I(1'b0),
        .O(hit_count[9]));
  OBUF \miss_count_OBUF[0]_inst 
       (.I(1'b0),
        .O(miss_count[0]));
  OBUF \miss_count_OBUF[10]_inst 
       (.I(1'b0),
        .O(miss_count[10]));
  OBUF \miss_count_OBUF[11]_inst 
       (.I(1'b0),
        .O(miss_count[11]));
  OBUF \miss_count_OBUF[12]_inst 
       (.I(1'b0),
        .O(miss_count[12]));
  OBUF \miss_count_OBUF[13]_inst 
       (.I(1'b0),
        .O(miss_count[13]));
  OBUF \miss_count_OBUF[1]_inst 
       (.I(1'b0),
        .O(miss_count[1]));
  OBUF \miss_count_OBUF[2]_inst 
       (.I(1'b0),
        .O(miss_count[2]));
  OBUF \miss_count_OBUF[3]_inst 
       (.I(1'b0),
        .O(miss_count[3]));
  OBUF \miss_count_OBUF[4]_inst 
       (.I(1'b0),
        .O(miss_count[4]));
  OBUF \miss_count_OBUF[5]_inst 
       (.I(1'b0),
        .O(miss_count[5]));
  OBUF \miss_count_OBUF[6]_inst 
       (.I(1'b0),
        .O(miss_count[6]));
  OBUF \miss_count_OBUF[7]_inst 
       (.I(1'b0),
        .O(miss_count[7]));
  OBUF \miss_count_OBUF[8]_inst 
       (.I(1'b0),
        .O(miss_count[8]));
  OBUF \miss_count_OBUF[9]_inst 
       (.I(1'b0),
        .O(miss_count[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

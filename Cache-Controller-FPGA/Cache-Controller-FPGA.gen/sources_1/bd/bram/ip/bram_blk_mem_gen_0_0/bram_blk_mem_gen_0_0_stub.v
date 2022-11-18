// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 18 04:26:44 2022
// Host        : kite running 64-bit CachyOS
// Command     : write_verilog -force -mode synth_stub
//               /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/Cache-Controller-FPGA.gen/sources_1/bd/bram/ip/bram_blk_mem_gen_0_0/bram_blk_mem_gen_0_0_stub.v
// Design      : bram_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *)
module bram_blk_mem_gen_0_0(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[12:0],dina[32:0],douta[32:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [12:0]addra;
  input [32:0]dina;
  output [32:0]douta;
endmodule

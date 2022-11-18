// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 18 05:00:17 2022
// Host        : kite running 64-bit CachyOS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/Cache-Controller-FPGA.sim/sim_1/impl/func/xsim/TopModuleTB_func_impl.v
// Design      : TopModule
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BcdDisplay
   (digit_en_OBUF,
    clk_in);
  output [3:0]digit_en_OBUF;
  input clk_in;

  wire [1:0]Sel;
  wire clk_in;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [3:0]digit_en_OBUF;
  wire p_0_in;
  wire [1:0]p_1_in;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Sel[0]_i_1 
       (.I0(Sel[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Sel[1]_i_1 
       (.I0(Sel[0]),
        .I1(Sel[1]),
        .O(p_1_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \Sel_reg[0] 
       (.C(p_0_in),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(Sel[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Sel_reg[1] 
       (.C(p_0_in),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(Sel[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(p_0_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:1],\count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_0_in}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \digit_en_OBUF[0]_inst_i_1 
       (.I0(Sel[1]),
        .I1(Sel[0]),
        .O(digit_en_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \digit_en_OBUF[1]_inst_i_1 
       (.I0(Sel[1]),
        .I1(Sel[0]),
        .O(digit_en_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \digit_en_OBUF[2]_inst_i_1 
       (.I0(Sel[0]),
        .I1(Sel[1]),
        .O(digit_en_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \digit_en_OBUF[3]_inst_i_1 
       (.I0(Sel[1]),
        .I1(Sel[0]),
        .O(digit_en_OBUF[3]));
endmodule

(* ECO_CHECKSUM = "4f1330a4" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module TopModule
   (clk_in,
    reset,
    halt_in,
    segments,
    digit_en,
    leds);
  input clk_in;
  input reset;
  input halt_in;
  output [7:0]segments;
  output [3:0]digit_en;
  output [15:0]leds;

  wire clk_in;
  wire clk_in_IBUF;
  wire clk_in_IBUF_BUFG;
  wire [3:0]digit_en;
  wire [3:0]digit_en_OBUF;
  wire [15:0]leds;
  wire [15:0]leds_OBUF;
  wire [7:0]segments;

  BcdDisplay bcd1
       (.clk_in(clk_in_IBUF_BUFG),
        .digit_en_OBUF(digit_en_OBUF));
  bram_wrapper bramWrapper
       (.BRAM_PORTA_0_dout(leds_OBUF),
        .clk_in(clk_in_IBUF_BUFG));
  (* SPLIT_LOADS_ON_BUFG *) 
  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  OBUF \digit_en_OBUF[0]_inst 
       (.I(digit_en_OBUF[0]),
        .O(digit_en[0]));
  OBUF \digit_en_OBUF[1]_inst 
       (.I(digit_en_OBUF[1]),
        .O(digit_en[1]));
  OBUF \digit_en_OBUF[2]_inst 
       (.I(digit_en_OBUF[2]),
        .O(digit_en[2]));
  OBUF \digit_en_OBUF[3]_inst 
       (.I(digit_en_OBUF[3]),
        .O(digit_en[3]));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[10]_inst 
       (.I(leds_OBUF[10]),
        .O(leds[10]));
  OBUF \leds_OBUF[11]_inst 
       (.I(leds_OBUF[11]),
        .O(leds[11]));
  OBUF \leds_OBUF[12]_inst 
       (.I(leds_OBUF[12]),
        .O(leds[12]));
  OBUF \leds_OBUF[13]_inst 
       (.I(leds_OBUF[13]),
        .O(leds[13]));
  OBUF \leds_OBUF[14]_inst 
       (.I(leds_OBUF[14]),
        .O(leds[14]));
  OBUF \leds_OBUF[15]_inst 
       (.I(leds_OBUF[15]),
        .O(leds[15]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  OBUF \leds_OBUF[8]_inst 
       (.I(leds_OBUF[8]),
        .O(leds[8]));
  OBUF \leds_OBUF[9]_inst 
       (.I(leds_OBUF[9]),
        .O(leds[9]));
  OBUF \segments_OBUF[0]_inst 
       (.I(1'b0),
        .O(segments[0]));
  OBUF \segments_OBUF[1]_inst 
       (.I(1'b0),
        .O(segments[1]));
  OBUF \segments_OBUF[2]_inst 
       (.I(1'b0),
        .O(segments[2]));
  OBUF \segments_OBUF[3]_inst 
       (.I(1'b0),
        .O(segments[3]));
  OBUF \segments_OBUF[4]_inst 
       (.I(1'b0),
        .O(segments[4]));
  OBUF \segments_OBUF[5]_inst 
       (.I(1'b0),
        .O(segments[5]));
  OBUF \segments_OBUF[6]_inst 
       (.I(1'b1),
        .O(segments[6]));
  OBUF \segments_OBUF[7]_inst 
       (.I(1'b1),
        .O(segments[7]));
endmodule

(* HW_HANDOFF = "bram.hwdef" *) 
module bram
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_dout,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_we);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [12:0]BRAM_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 CLK" *) input BRAM_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DIN" *) input [32:0]BRAM_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DOUT" *) output [32:0]BRAM_PORTA_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 EN" *) input BRAM_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 WE" *) input [0:0]BRAM_PORTA_0_we;

  wire BRAM_PORTA_0_clk;
  wire [32:0]BRAM_PORTA_0_dout;
  wire [32:24]NLW_blk_mem_gen_0_dina_UNCONNECTED;
  wire [32:16]NLW_blk_mem_gen_0_douta_UNCONNECTED;

  (* IMPORTED_FROM = "/home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/Cache-Controller-FPGA.gen/sources_1/bd/bram/ip/bram_blk_mem_gen_0_0/bram_blk_mem_gen_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
  bram_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(BRAM_PORTA_0_clk),
        .dina({NLW_blk_mem_gen_0_dina_UNCONNECTED[32:24],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta({NLW_blk_mem_gen_0_douta_UNCONNECTED[32:16],BRAM_PORTA_0_dout[15:0]}),
        .wea(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "bram_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
module bram_blk_mem_gen_0_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [32:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [32:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [32:0]dina;
  wire [32:0]douta;
  wire [0:0]wea;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [12:0]NLW_U0_addrb_UNCONNECTED;
  wire [32:24]NLW_U0_dina_UNCONNECTED;
  wire [32:0]NLW_U0_dinb_UNCONNECTED;
  wire [32:16]NLW_U0_douta_UNCONNECTED;
  wire [32:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [32:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [32:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "7" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.194776 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "bram_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "33" *) 
  (* C_READ_WIDTH_B = "33" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "33" *) 
  (* C_WRITE_WIDTH_B = "33" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(NLW_U0_addrb_UNCONNECTED[12:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina({NLW_U0_dina_UNCONNECTED[32:24],dina[23:0]}),
        .dinb(NLW_U0_dinb_UNCONNECTED[32:0]),
        .douta({NLW_U0_douta_UNCONNECTED[32:16],douta[15:0]}),
        .doutb(NLW_U0_doutb_UNCONNECTED[32:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[32:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[32:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(wea),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

module bram_wrapper
   (BRAM_PORTA_0_dout,
    clk_in);
  output [15:0]BRAM_PORTA_0_dout;
  input clk_in;

  wire [15:0]BRAM_PORTA_0_dout;
  wire clk_in;
  wire NLW_bram_i_BRAM_PORTA_0_en_UNCONNECTED;
  wire [12:0]NLW_bram_i_BRAM_PORTA_0_addr_UNCONNECTED;
  wire [32:0]NLW_bram_i_BRAM_PORTA_0_din_UNCONNECTED;
  wire [32:16]NLW_bram_i_BRAM_PORTA_0_dout_UNCONNECTED;
  wire [0:0]NLW_bram_i_BRAM_PORTA_0_we_UNCONNECTED;

  (* HW_HANDOFF = "bram.hwdef" *) 
  bram bram_i
       (.BRAM_PORTA_0_addr(NLW_bram_i_BRAM_PORTA_0_addr_UNCONNECTED[12:0]),
        .BRAM_PORTA_0_clk(clk_in),
        .BRAM_PORTA_0_din(NLW_bram_i_BRAM_PORTA_0_din_UNCONNECTED[32:0]),
        .BRAM_PORTA_0_dout({NLW_bram_i_BRAM_PORTA_0_dout_UNCONNECTED[32:16],BRAM_PORTA_0_dout}),
        .BRAM_PORTA_0_en(NLW_bram_i_BRAM_PORTA_0_en_UNCONNECTED),
        .BRAM_PORTA_0_we(NLW_bram_i_BRAM_PORTA_0_we_UNCONNECTED[0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 74464)
`pragma protect data_block
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
mWtkNhuYp9bQ4qwgITTXGclaQJbRXA==
`pragma protect end_protected
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

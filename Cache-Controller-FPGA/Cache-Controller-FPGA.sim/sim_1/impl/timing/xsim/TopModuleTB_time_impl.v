// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 18 17:15:55 2022
// Host        : kite running 64-bit CachyOS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/Cache-Controller-FPGA.sim/sim_1/impl/timing/xsim/TopModuleTB_time_impl.v
// Design      : TopModule
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BcdDisplay
   (digit_en_OBUF,
    clk_in_IBUF_BUFG);
  output [3:0]digit_en_OBUF;
  input clk_in_IBUF_BUFG;

  wire [1:0]Sel;
  wire clk_in_IBUF_BUFG;
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
       (.C(clk_in_IBUF_BUFG),
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
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_in_IBUF_BUFG),
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
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_in_IBUF_BUFG),
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
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_in_IBUF_BUFG),
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
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_in_IBUF_BUFG),
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
       (.C(clk_in_IBUF_BUFG),
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

module ClockDivider
   (BRAM_PORTA_0_clk,
    clk_in_IBUF_BUFG);
  output BRAM_PORTA_0_clk;
  input clk_in_IBUF_BUFG;

  wire BRAM_PORTA_0_clk;
  wire clk_in_IBUF_BUFG;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire [26:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry_n_0;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire [0:0]counter_0;
  wire [26:1]data0;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    clk_out_i_1
       (.I0(counter[0]),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(BRAM_PORTA_0_clk),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(BRAM_PORTA_0_clk),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,NLW_counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO(NLW_counter0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,counter[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(counter[0]),
        .O(counter_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_5_n_0 ),
        .I3(\counter[0]_i_6_n_0 ),
        .I4(\counter[0]_i_7_n_0 ),
        .I5(\counter[0]_i_8_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[0]_i_3 
       (.I0(counter[16]),
        .I1(counter[15]),
        .I2(counter[18]),
        .I3(counter[17]),
        .O(\counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[0]_i_4 
       (.I0(counter[19]),
        .I1(counter[20]),
        .I2(counter[22]),
        .I3(counter[21]),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[0]_i_5 
       (.I0(counter[8]),
        .I1(counter[7]),
        .I2(counter[9]),
        .I3(counter[10]),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[0]_i_6 
       (.I0(counter[11]),
        .I1(counter[12]),
        .I2(counter[14]),
        .I3(counter[13]),
        .O(\counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[0]_i_7 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[6]),
        .I3(counter[5]),
        .O(\counter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_8 
       (.I0(counter[25]),
        .I1(counter[26]),
        .I2(counter[23]),
        .I3(counter[24]),
        .I4(counter[2]),
        .I5(counter[1]),
        .O(\counter[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[26]_i_1 
       (.I0(counter[0]),
        .I1(\counter[0]_i_2_n_0 ),
        .O(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_0),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter[10]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter[11]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter[12]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(counter[13]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(counter[14]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(counter[15]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(counter[16]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(counter[17]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(counter[18]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(counter[19]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter[1]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(counter[20]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(counter[21]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(counter[22]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(counter[23]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[24]),
        .Q(counter[24]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[25]),
        .Q(counter[25]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[26]),
        .Q(counter[26]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter[2]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter[3]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter[4]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(counter[5]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(counter[6]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(counter[7]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(counter[8]),
        .R(clk_out));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter[9]),
        .R(clk_out));
endmodule

(* ECO_CHECKSUM = "41e7e4d7" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
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
  wire clockDivider_n_0;
  wire [3:0]digit_en;
  wire [3:0]digit_en_OBUF;
  wire [15:0]leds;
  wire [15:0]leds_OBUF;
  wire [7:0]segments;

initial begin
 $sdf_annotate("TopModuleTB_time_impl.sdf",,,,"tool_control");
end
  BcdDisplay bcd1
       (.clk_in_IBUF_BUFG(clk_in_IBUF_BUFG),
        .digit_en_OBUF(digit_en_OBUF));
  bram_wrapper bramWrapper
       (.BRAM_PORTA_0_clk(clockDivider_n_0),
        .BRAM_PORTA_0_dout(leds_OBUF));
  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  ClockDivider clockDivider
       (.BRAM_PORTA_0_clk(clockDivider_n_0),
        .clk_in_IBUF_BUFG(clk_in_IBUF_BUFG));
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
  wire NLW_VCC_P_UNCONNECTED;
  wire [32:24]NLW_blk_mem_gen_0_dina_UNCONNECTED;
  wire [32:16]NLW_blk_mem_gen_0_douta_UNCONNECTED;

  VCC VCC
       (.P(NLW_VCC_P_UNCONNECTED));
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
    BRAM_PORTA_0_clk);
  output [15:0]BRAM_PORTA_0_dout;
  input BRAM_PORTA_0_clk;

  wire BRAM_PORTA_0_clk;
  wire [15:0]BRAM_PORTA_0_dout;
  wire NLW_bram_i_BRAM_PORTA_0_en_UNCONNECTED;
  wire [12:0]NLW_bram_i_BRAM_PORTA_0_addr_UNCONNECTED;
  wire [32:0]NLW_bram_i_BRAM_PORTA_0_din_UNCONNECTED;
  wire [32:16]NLW_bram_i_BRAM_PORTA_0_dout_UNCONNECTED;
  wire [0:0]NLW_bram_i_BRAM_PORTA_0_we_UNCONNECTED;

  (* HW_HANDOFF = "bram.hwdef" *) 
  bram bram_i
       (.BRAM_PORTA_0_addr(NLW_bram_i_BRAM_PORTA_0_addr_UNCONNECTED[12:0]),
        .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 75184)
`pragma protect data_block
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
2A==
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

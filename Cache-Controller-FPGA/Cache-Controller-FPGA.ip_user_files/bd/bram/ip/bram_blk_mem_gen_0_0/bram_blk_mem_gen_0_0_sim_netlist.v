// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 18 03:38:14 2022
// Host        : kite running 64-bit CachyOS
// Command     : write_verilog -force -mode funcsim
//               /home/eelfire/iitgn/2_i/ES203/project/id-8/Cache-Controller-FPGA/Cache-Controller-FPGA.gen/sources_1/bd/bram/ip/bram_blk_mem_gen_0_0/bram_blk_mem_gen_0_0_sim_netlist.v
// Design      : bram_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module bram_blk_mem_gen_0_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [32:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [32:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [32:0]dina;
  wire [32:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [32:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [32:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.58005 mW" *) 
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
  (* C_READ_DEPTH_A = "200" *) 
  (* C_READ_DEPTH_B = "200" *) 
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
  (* C_WRITE_DEPTH_A = "200" *) 
  (* C_WRITE_DEPTH_B = "200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "33" *) 
  (* C_WRITE_WIDTH_B = "33" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[32:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[32:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19808)
`pragma protect data_block
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
LDhi9kHiwyIAxN7qpkeHykMPPrh9sBd33BynfUY=
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

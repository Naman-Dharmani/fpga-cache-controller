// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov 18 03:38:13 2022
// Host        : kite running 64-bit CachyOS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_blk_mem_gen_0_0_sim_netlist.v
// Design      : bram_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
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
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

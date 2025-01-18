// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Jan 17 01:34:01 2025
// Host        : DESKTOP-OGK78OO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Samuel/risc_arty/risc_arty.gen/sources_1/ip/imem_bram/imem_bram_sim_netlist.v
// Design      : imem_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_bram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module imem_bram
   (clka,
    rsta,
    addra,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;
  wire rsta;
  wire rsta_busy;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "imem_bram.mem" *) 
  (* C_INIT_FILE_NAME = "imem_bram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  imem_bram_blk_mem_gen_v8_4_8 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[8:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Dvv0xmclD73tSZomPkF23jsqDIybk08I1eVAtnFLbADB7dJ1TW1G9QCT+YrJtYeSMSArZtFZp1eK
SL108w9xnAiGQu6+h+JOlQ4kM3ZrssLBgch9gQClvjDNp3mUIB0w1X/QcB6dT8HmjcPI/fnJU9rW
R7IR3MlVoMiV2BNQcvQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tliJSRYoDy8p8gJnQu9vdi6hbHtXxXsCHyLUryhIev3XQW4V2CD7rgSBm7cKWZsHq2TwHP8zkfE/
1u+myVqndpeAqxmVX9Z3t62TomVluWLdlNXShu/6uYA5UzMfxPWYCs40b10rlLt4ByFqa+M9l8+s
cWR8eq/ltnHawAZVuFWmoGyEIb8U4ex/U+0E/UTcNhmn7wCGfZkZQ0uwvlZRkPLuBu6q6NHdVuVr
DO/FYQLBFXeryXjUvpjipWXnLmG6FrW4z5lzQQ2O++FjhelfT2Eb7VgFeA/mZSNEfXvn3GeHFH8H
AzIkDzeWfiJL5RajrkMbjzS9UKfQavxZ5ClZsQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
r7WLnf0gOvH3A5+2iYc0kBJJj6jWtNmNvi5ZplhID+006plmbjwPjYGa8df7W1xjMYtu2578/ozT
2d7/jTihMKt+nrlxvmYhRuCdOGUuqXpAGUZqAUqs3CNNEb/D/SQKTcwqxLvyShGCjSTcr9TVpJkg
5Z4nfGu54gSMYS++62g=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rFGi2+X/NQRSJeisAhKLrCO5F3/I0u5jvqJ1Ui3T2XwKx6u1qDXfK5PACxs6bvnnvpYvz0OHQiKS
qvcx6FjU+o7W39pkPpJBbKWjIzImPjbLlbXev9oIa0SHWroDtCFKzlVm0mcIBClGHkPbb9VlU3TS
Wxz+9m/tlVEgEkYXCcyBK1tOJ2Ee1kKQb7yBQcwC+lcRJbv63NTCAnHxAqGBHqVRT3uQIVTKAGn7
WFcj+4UH4k3/xCs5qHoEpEUWt/Me6NNo55K84FXAdFFRcxu4LD9mexzqzWiIXagTdvRWJtTm3UYd
nDyzwDxyz2H/lsNSsNJIEuq6lIZjY+h4bGvffA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vJfYmp0BDo6j2bukS3AtLrYbTibygsaqYh4vx/vD17k7q/MXQIFyD0Bq5P8rxbov0cTt5e+zs80U
1vb4lD05lZzwCp6dlaxIdcJEJTmJFK80131Dfp+gjg2rcQMUbe0eFlmHHobC9S9FxGDW4/BK7diG
ZGY7hIOKWXXtnDvVtYR0YvywtBTMx/LbXj+Mdxi/XyNmuc2Q6kdEZq3bbCVr4lQhYufqQXu4v2aj
3SOXwiP4jYrrbS+0eB98XXXqEsI4V9rGniNrjhRlHVeTWxrbgPYO76ShHcSHSR3lOihr7rZQRRk7
i/TaaDIBGAJ8oG0PuzUCwr/PSDreWHmGPQpC+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hMXnyK92b1X9S7OHFXTUgLvwUMt5so0BW2VyYvl5fPQt531dLK1JXVTx/pAx4FU2XEH6yJd46w5G
I6vkgrjmDozUFKdyKjKGWgI9MPr7PcZtsm8aYQGw5cZo698bSz58RjEZenqInlJ9cPziftA3OnG5
QQ9mt7lKPmdbE36PF5r0ipmwBlfovLSuxXsi1F7YqWOYxZG+FTqelLelyfVhuVJxBxQ0oIMC2h34
SXmwOPpC4leyzj3+oY/ks3mNp8vD+vIaaE0uwYq32wXdM2ofEa09E4wuVObKt6+lk8AfqkiKwXSE
YnmjpJfaG7zwryLt5ukPO0HN7fDItepKdiBpHA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SCQtOsykE6St2U2wrmFbCbuBUAekA1ZC0M44tgKS/uwp0/TFEhNFVqpIF4/atN1eTnIhhdahBfIO
82/YuDgUWx+8vzKBgKI3vUwwj17+SOyh+KvAK04/UFPurOQmUt1PY31WdYwZvyxnh1/ZORNBeP8Z
JJ8RWmbU8mKFWG0WVL+gm/TBtp77lymGSEggp1QBfrFXCW/AbOAdT0D7dJIf6XD8CcP2TZ6F710j
BSVABf0kypZOLZhtT8KDG+RUYAtUNKn5qQ8gHuKBoyCDHhT5mIyGNIgiBacuIVbnLWss02aCnT7I
vgRt6b2671H0SAGEIctVrtJLbyfQjghmduGdzw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
b+bevLxynCTriuueDkNwCg0TCFJtyBra5ADVJ3bgPAPLsvsojCLVaCz5ddQad35gCBZnksxnJH06
+yY40+jnKT+TBboXmJIJtU3YrusEyPqxZmqs3nw8FDy9au9NzJKGeNFWdzUIAqrRzXHZjK8QABaL
xNH/wkNY5cppbL5fDRdDwByY5x/dL/DhwkyhWE6+OPDVE7o07EE118A2Xl9i5It5konfK+y57aPP
UkJv/Dc1j87/P6h5zuopNa8m0+hfXY4QFoZxs5jCEa0QGIBS9Vx+UnhhKV0wq7JPY4bMukGAT+MA
ye0/JKF+A5KwsCAhmojoud2Oay/47iVrXttl8Y24evVe1AAZ72Rc/qIezJY8Pt2CafTIfGYcDwGB
febHpaiCzl/8K1zrulB9KgZPx7qCOaPQMd/DYhogO8Qfx2Sm95z43sRCiju0aVlCRhq/rcxVz4Oh
KBr/hTpiE1HEuLTuESV/ujtrV1QOIcWOKahzWiiBPdLlDPPdHgu9uwae

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ahwECbvVbT4hZl3PHfLdseTmY9zlhp1mWoaujoB/o/q+m9HSNBsiiJ4hbWy6wjdJEAC4aYkahTPe
7uFyqOgDwJ+O5ZH2rxCslLTGjbU68drDVWJHzF8JzKdAEarP/+ncpRnY4SbAQjbX8tWRWn5dqfMQ
TCapkgJ1Fp4r4CbWt8RChnCoahUm1nC7f4bVdQ07KK8jRdi2gExRsyBa7Dkh5rFMLcOxgvHQCwcP
6sqJYCx9R32MbCEtQrI8BbdxDhT260qpJ9xLpYmR3vJ2OBN3WlU2+9SEIcJJSpUs26CRmSgn0dJp
qeEp2qK4bFh5WtoU+HHcBpRoa3AmiQ+MBkVu9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Il/Uw7kZS4CgsFh4nWnmJB7Ai0MU++xT6jV6dD+VlQ749imIQdmfkbKtOmv1zHMAKn4s+6OQBpTa
WJmdwOjqJ7iJ6vx900wc/H+QYTTE+4WaFOKbm7kZ40/aE2QZepMidVWi8f4KvuF/QYPaMBY/PFJs
iMhdVlsbyJwsy0xeSCwQIQJRV3qzT0OqYPDKz1RfOdwVv5syjrer+p1eSVkI/ExwaHvPX3X6V71r
Wbe3Vxb4OgnUCuGLqqyTpudYgGGB1379S5jNdLyhdwPySDOGizLIBr3pkUB9C13skvec9gJ+85AB
MGcrwDVwxcjwUZSL/FZl4da4NTXX7my/4Es1pg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYgmSMMk7lOLYED6FYdGW/bCj5Z/sBzTAD+fXwJ8CpadmlhlJcv+5X2K19bmvVI9enAMelidRJ7a
AV+lMSBtCzZjqeT32onYhDwe1IjosqkSs90E4CLqgMG/qivMzxcTMOBdmQ5ndwMviayBtYXZUvUg
imF8bCXTCEwsIqOy7MSpMZm4L9eGwN+3c5CYuxy7M420JO+s8rNgna0aRbk1kOJa1qIBJgBUYyAT
wgKSjzEfRQsMJLaoryJ7y4b18oDGTE0TRvGRgCAZ15uYhWmJrwtHFykT2ZIABXu6V+Dnj/OSrD6v
OA9v+a9666XvtZPxle3OEfz1YH6XASKML4tlnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24032)
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

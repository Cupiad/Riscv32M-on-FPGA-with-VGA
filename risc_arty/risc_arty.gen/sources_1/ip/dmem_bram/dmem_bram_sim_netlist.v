// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Jan 16 20:18:55 2025
// Host        : DESKTOP-OGK78OO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Samuel/risc_arty/risc_arty.gen/sources_1/ip/dmem_bram/dmem_bram_sim_netlist.v
// Design      : dmem_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dmem_bram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module dmem_bram
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "dmem_bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dmem_bram_blk_mem_gen_v8_4_8 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[7:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24640)
`pragma protect data_block
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
NXp0wxqd1Qxzm0SzhUIQUA==
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

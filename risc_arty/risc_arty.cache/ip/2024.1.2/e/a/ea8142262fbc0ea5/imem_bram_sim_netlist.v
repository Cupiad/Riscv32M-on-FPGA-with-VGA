// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Jan 17 00:39:30 2025
// Host        : DESKTOP-OGK78OO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_bram_sim_netlist.v
// Design      : imem_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_bram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24096)
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

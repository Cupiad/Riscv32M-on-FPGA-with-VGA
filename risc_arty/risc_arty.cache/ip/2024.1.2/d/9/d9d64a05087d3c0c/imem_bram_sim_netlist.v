// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Jan 16 21:06:07 2025
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

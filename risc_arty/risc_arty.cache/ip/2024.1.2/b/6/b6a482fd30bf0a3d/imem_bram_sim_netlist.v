// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Jan 17 01:34:01 2025
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

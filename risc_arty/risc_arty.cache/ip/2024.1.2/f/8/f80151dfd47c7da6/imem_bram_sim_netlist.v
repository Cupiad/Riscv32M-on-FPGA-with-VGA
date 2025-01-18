// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Jan 17 01:08:47 2025
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

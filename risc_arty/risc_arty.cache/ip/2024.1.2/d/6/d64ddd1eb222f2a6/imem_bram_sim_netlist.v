// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Jan 17 01:02:19 2025
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

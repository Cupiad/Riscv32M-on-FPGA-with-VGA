// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Jan 16 20:02:36 2025
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
yZise1sUm+9KLyaAsMyVaDgQ9c80oeaLjBohY1zJGANFGGE3YwoUcaqAYuo1ysXJRoDEMaCvSvCc
G0nAQd9GEttlaVFgkLTYzSFam2hTaYb3MQhUKoeGZlHLyICLeixjFoQtFY73j2TXLDySz5eyM0L2
U6drOeQk8FM7D3XvVvCrvMtY7J6KjDc2Em4Rt453ay9wH2t6VKQlB4Cs3ZP8pClhBz4zoHwYvD+R
UenUIR1a8s5LXkgk+cHjQHDj0yIeozUVu56U4uAgxcMmb8RomnfktSNP3/0BU+gffSR3AdZZ/Grp
Uxbbs9wkoFcGLM/5fzxKRLRI4zG4GWhw6agTqISBfGtr9THLK16HNf8a7/gpojU2tnyaTEkJyg8C
KX+JPnsI4sZLWswmbyct1vOofVntUgsrI6lqBATyWsOU/+jXbMNrEpylTlj729lR+E5OII3SJvkf
uBn+twR/kIspu0Qmrigt+Q5nrjGxOoej023RS5ZcHuXtBdF9cxFQLcibkJMHaTvALDFXgYs08jLl
cRy5dCKpMeDAF3MkP7upe709b2S5kjRZjCp8gJ5lxAU+nY6bv9qAfD6W+1rgs5wesdUbnS+ewXcX
2RQs1bnR9asebaUEy8khfBJP3e9TkEPCKC4Sf6WQMdVtIbv/b5/MmuCgzeugTfvbl82UQTq+CWi5
KZSqXw/G0JdOAHGwYsrwpQn0xs0/1+rFjCAcrtbW2KSjuRd6wL3d9uoD81SyQIxhJ6b0NTW850fQ
dqo2ECgKVMnI6Fd6oWYhHUkaYj/VIsOx+a2JalsuBoy7IwtPncP1QAqwqTU/S2W3DgqhtytcLZv9
xPIW7LAiHo8COfYWBzXTeK91YPo9N6Yr59mYKrfMMI/dSaLFhuJH4J0EmQTGtqYpbTsucnSkwny1
vhKB2p+rhNLeOE+sLyO8JioUQhvoKJFSdLD4BE4xwAO4hi2znVBzbt9E/OuwHctMEMGqga+ZIxcw
s0Qf1NOJbGF2yRnNeAus0xWroRt953Q/1ubzKIk+3hFfqyw1eun92acJJb7SzSGHamH13KNKoHHT
C8PVFaVN2GkPSdFISlT/LJPZxpOmI9WZe/fShMPKDD0Zp7smv+DRFRlgfvlmtDTL/57VCEagZFZv
nwJa3HG2BM1GBFvuVKoh874e0KNXWlHq7YlXrTzw4cTWp53AOIcW54KrJKRDf81zABFzshAa1J1y
/kVO/xaRNZ9KFLPh18S9tfuHtH22hVC2hC3iRVxpM37OUlB6eLFZi/5UqtWlB8CMzGQ46a+j42se
+0wM4n5A8UL4ttROAtDsl4Qbfe6lAzNVf/ZOsAfkBGrdnQ7oab+10L0QglIaIlDvadbj1BNJ4x1w
lLtgIzG0msYzzz7v8pMsVmjASVipH3fKmG810CvuaN6ILRQ+gc4LxFnKUszfvEk1WpK9hXEPWdLd
PZ3wzU820tKEHMZD9rvGkO2IO3hpZXUffJ4YhJDLsLqdWcq3Mw5u1Ivs93eyMBPNj0gufy/+kj+v
wqS+r4BAd3K5TKfsSQRkJsZMUgVgprO2Ppypn0Kr6I85MpgDpi3RlADFokL5T9W4Lfljr7UZI+JV
KTSee4ypXLh/Ldxef7baOlAYV4Wuk2Tlf9nl8cCBvUgNIIFAglvFkjrium/hseQpkUD7QhmQpLGY
W85VnJMEnj+dFAPjD5Z3T/cFtEE1vgLgnTUGdepca6fkFSwydphu6ALF+6GGKo7vYXhryCI0DDXh
N/TPa8gGDJVHE2ND77uRET04VdXm4Rptdjc5+V1M7yZakzAiOvPQ8wHD+nM7DarDVVJiJOPiAntK
WvYBGH9l35aP/oTfgsPh+HoU/hl5fhWdYnlvIPjEq/imU2MgOtWm4X96jMtwA6/rjItJ6awYcNdz
RjI1ch7TItLv876r8d7szzkFGF2i3TsxijIIbPKBeIbk9zjgoURSdf60q9b1tFNLr4WY5UIk6m3c
ZyMvsVRnH8eFumXD3DrZJgAdifIw0W85yWneh5BoxHUHVYURK35+rf2ES6icPLPJYZ2BzivagLIW
NhiRpDCINePX1nDFfRtsNC5MevadAWNi5QwMrXWa7KVz2t5VyLztIwr9eQtVhqBQR3xkLCzb0fgT
0vocb/8BvExGUAhS2eM/aQAJeGByOA5KVke9w50WV6K0IjQXYsk47/BSrc0GxtFi28cJCOt/MPLE
8csb3EBMaiVNvT87w7N3mQT7QKmWu2ng8fNRjaA1YXSORnnZKWyfMfnbZNVjX5gKFocwUdPwd/Gx
DZJ/l+YPL0Uge95VKhMHXuNUXJ4c1ndnpG5yIIHxqBtj1f4lO+4k5AtAlw6xOrkULDzba65T8QT1
ryfLrZTWDYXDjtV3ozd6xqhr4M4ErvVHy9Jibp/mbuCjq5OsViSnLZbr+vJWNmc72Koa6LmTNkge
V24Yuh8S70LdKSFjsCjBn4s6paWvbIHpwfRX/wClDyv1PXiJYYOsJv8zXCaN7naUNUmi9J0S5+fR
BEd02b73evouFdrqFSt1KcTYnMrI4UmEH3iFViQE/3o53oPzzcBO2SGQaj1S1GuGQMwl9ss9tck7
3Z9cbcLlLKMx082C0OO91afm7t/BNrsyCv46qYIHvxGkQZhqY08+O2RUVorxRjXSH1ZwrZAT/kEH
GCYpIU3RF3nIUa6Ltdrh4G4h9A88swaf3pSEolgJNLQT9Wquv0VBiFZOnGw4CXS4wvi6NNK34xkT
IonHZZRVczsD4X9WuxwCD6G7HztKFrE3oB4bcLn0suwqWH9qnstT6Yx5U+clbUNZJvOaXxsfPk02
eW696fU5YqXltZapamvsFXnN8Hks3kXx5N0AjmOHc8wOQVjYTX1mQMI0OQHZCs9JxSh2gesfW7Qe
RP19Onz9fm9wxW7xif0lrg3VeU6NPEXqYMFkpKcx/sFX64z9vWhmgjA6i8QT8lQOW8YsspeYa7Qn
ELjdQqWH9yEPLKR82ENzJKeenxbxSpNaHaQS15eSxWSMEe7ACfVzK9pb3czBM8867fpLKXRZV9eo
CW1f4pAzRLhbzZ5yIim2YedFATyJ3ZPI4TPLbII5wFBnGBGIzL6u+IYgvdYafA29KNZEi1iWAAGN
/HtfTo5de0XITNMH4AsBzeUj7CIERNm3w+l/kYIAPGRhgI8oACJIF+KzrUHirjGxpVRiavd37eHy
G3Ze0hyGSjT/tOgoilHzKOJw9kwB+jyVWzYyNq+fvMZBtgg4ODXh1lOxLjtf9HPy7xc1O2/uHGNu
0x/wyjYn76meMDH/aiwgZBbBJ8OzUIBXhwyTKj5UT0L96z33z1s0W37u8My5Io569uqrxs7rzm+L
lNIRFdnAYK8dQ8ly+IEs5Ii5nBFoF4oWS+b3hPInXNP0PLmXAzlU5GQobu4jrevNbkyV1FLsMfNx
dsgP2YDQID3rLEk14FZ40LZh+Pu+VMecPRVtnRdbzAlWipXA+TYWGc3RdGuhnoY/Fc5FBj2TwA6O
rcTK0LepBjKyHHHeqfgTekvtW0bODcyLtwVQm36sM+Bbgdoh5ruVUN+AuozhbS8DtTLzfQFdib3d
U2LGS31wwJ2nMYYVFIpYxW2M8jnfLfs0h+xdI9mLhmIhUEIACPUPfmF2dYPin4aiTsCt4kbF/84Y
cAEpGPkzSlRt+QIBknalfywZ98HjzDyGUmnsQpniGfFTRqW6ciGzHWBdqJTWQlbb55D5o1COnS6r
z5wiTDUqkGuwB3fLke2S+nOSkowIpilPy2w0/Id0vQaUoNLiZ0JrGKYlHWlppprC2NhIVGGx7xhH
OJCTY3zarKQEHCkyDsXQkUN2ek6i3Y6u4Bo5GyU1NYSnRIR9Q2dnLXNBKs9lHekHWqievvROA+Ms
UjggdCXYDho5teE+6er0G1AC8PDrt45IZPFtcYBtrgBTsSQAiumO5VOVHDqbnEmG1m75ia7Mi2V8
0GW0K31ATu3+fDJro+I9q89NcFnmRn01mVBrVsutZ7Pc+tI5itRfQ8ffUNYty9bFJDunh4QohC6B
aUg4eKdrS50xCEj1QilJZ3LUT9w5pJIbwCpZ9+ZNHxPPJsrdy3dFNePhBA17HwU2CK92OisSlItj
s+HNLmv5bmAwOzQL0XW8G6LrAVd4BvIaOmsgzUFE4iz2DofV4hyyOAh4GXg2fYQTbduRGKKZakgr
MVV8dfHifPVBsYVPDaR16rK7lPJ3zqoNVPhS+62w1RKq5dZXXXpOUnZPSjov4W1lmrZytn4g37G8
GMYel7UVScqJ6l2Y+YuxNYB5yiJQ2gr0ONN+V+X/LGr0KKasnAg5s0iXqz+2GADEEJdeKE8zS+9s
WXqsNtfmI3ZpxbcDv2jvaAh4lPMQdQ8t/tXzpq8ccrdml3TIt42ehqd5ShXES4gY5P03AsE1JKxI
/2vFCGTS+TrPM4qSWA2Qe0KJPFEogHtzlFebcSHTwR9zHwm/j2R6QY0WzLWq7GBPUMi+8iN3BBFh
+ZhR2M9Z1gVHgYYa0Hoeoa5TiPM+wN1MBxnenWbrsBX3aKDFxWGEJ33B9ohsELUAT+Vc5a1ZGxqc
PjSW/SbP3YCh4QnCNeW6kp6Uq6zflYUOIN6v1aRY5wgZGz79x5bY3TN2YBd+Clrgs5ZdNz6sRyaB
FJ1whUhIS6iCR06DmX+ovo+c8U0SPzjS5nCO3h6Y4Gth41gx/AHxdGiLNI7/pDHeOy0+v/0hBhT7
SsYpbyMXy+c8YHKFQ76bPgXqjjFwD/iBq66mn2sq1u86tOR3O1wVzYlYcjiwlayACiTa8exQxLLN
L6Fh3O/upBLvGlcc6oJqmbmQhX3CjiaE4J2uGvZiYqEv0iOSY4Obay2LUkFdiAfZu9j738EvLdz6
2wmUJKHlgfLXJoYvbcu2lOrV2ujinTZkn0E5okpQsf2TQkYC48JuWflFPph4RcuoOvdMvlQxvILT
64QRgtf3pYdPfpLX/+AxO+9y6tWAzqId+Hf8xsNIsObV8MSP8NC0yBvu+lxdFTXGW0D+nwxtB1dy
QWm7r70SrZe58gvu7RBDTeBmkk8x0uW/lZ+17KcsYKA7r/2m2rDnAaQKHEhPaYGLu1Lv3or9KiZl
KOMK922EKghCK1PzYPOk98yORXsiwoUKZbNuqeP1U7HDJNPwDkR31j2Hi2JlVbx9gwuVAV1mxwGC
/e+5WoXpzwh2ssfylwdrmFol2oCHLzlZl5eOmRL4JwiShr0reJcTfQ7QQcZE5uHAsOMOHdxad66r
WdlPk3zHgeaxZlwFlTV6XK2w6he3UuRd0ad03qePvsGm5mC3ZFrH+2m/qPqux9WjHUTj94qBaRAO
Q+ScuH9McSLeuOhy5Q757ITXpHf1ZCQiZM6Vo7ZUGAB2oM+H9TCO7Myaa3kY4aEvyk2joBdtEXQT
EbDWqsP5tshxjoaFF+hVoCu9Id5vefdTV/X/HCN91M6puAn7hnbcR4yAmkmoFDPW1TlPzKSXHcrd
7l8e/wXVkSZVdX++bZbWZ7ke/2NxaK6uqFBbWe6bpG7ZDedIuTm0RSP/JfkNUzT8NPu+8DS4Zgab
kEyOGQ8k1TQcbPqJZAHLoKl2mbhiZTHKISylCB4GKh/Rh8z1JpEoeYpilFBSvKmIT1SR/bMbQeWl
WArfnVf6UxiuNNg4cv9pB+5SYwXtEzMpdiDzUpXZaLy30LZfMxpzKm+t7sPHZ/olG84hAtd0Mg50
Wx6Uf0YbLDHgfM6JQYyb6cc2yIYbZDEi8KCMReolRYyszA++wd1ZAXXIWwmgvGIi88JuliS9sGLX
ObxB4xujsLwZi7cS8LwHWsQ3XtKKjEM81GtyNZ/aKP6MIrnliWw4uR7DEG33QQP8J0yWT5PevnGM
RDyhU6SYnjnPU9Cdu/MWA4aizQxDQ52UNH3U2Vyi+FRvBmbU3YW0zTd1sdizfuobkRUT48lua3X+
QSy+1yCO0MZeD57s10FzMqOqwX8y37YOERG+6P0G35o+8w99a6+bvGob06KMEAiqTykMsX6q51Ff
G0wuZtONDNukpZ7FLiPoRA33ggQXh+SDFNIbyJz71Eung4HxgOZ5LYxeLAaZ7Dk+qNUEJ8OaQMMx
h/LygL9RUhf3QQ0D8n5czjv7g68cA1M7cb/jsLa5uRhoDIE0rUSLQU6/VZ5HF0PIR4l5MCRu9DvN
ijTNWTUh4WtNqOOvFGEI1BEWiWsZF+/U/hqnZ7yhdn66PEhPTfQK6w5YZBKmluOYLQerwtKbzgwA
oG1XZrSi9rFMRHg9xmKWr/twEwRScVGlf7iBb7jtwpN0FthR6Ih9JFYbDfjzIQquluA/4p127hG0
ctUQ9LwbfN7UZ6Trk6mb4qXn6ji/sHPyHYALWZOGVYhvXiMWAzOxXCYf/BuzOe2n+nEpPUFu9YID
T8K7WlxooBVQtn3TBHzKKYcMgqBRP7ai1CsxxIJC1vwkBY6ljj6zVwLXiqNqbvKOjge4mHyDLG5L
UxQIICk6MMoLxj7jknOJqY0EOtWcGh4ICyJvB6p/1frVEAjEOul3cuude4jCeYY17GQct2WdBY6C
O4SLoGA4vGKjuAShfgYGQfZXo83Lxc7M/cH4xBK1BQFgCy2HDwWZaGKp540h6AyvzfpJE1BC9LVU
EMo4cZmrC2DpuPrYwBnwegKNHVsy7MCC/635INRueva14+7R0DdqFZQsldRX5AkDC42RfXXOcp+g
h0UBOUXYc8gBi93J2aG07LinPP/oIx3LLKF3f8uEzpnsEuEvP9p/1iJyC03OFtSrA/z+sUa+MWS7
h5bHp/K4vEFyXIeAaokhmpoxW3LSQpht08nY9hCT02pJvGQBI+VVYElhDRMgT4+0NOQSIVG1RgpG
G43IipTEE/80EyC2pGNKNuKcQrn6TD47rGlK9hYh5uytjusSHBYTb03CP+Sd57KMTf7cMQs8VH5q
CXopoQyN2bV8SrcV0eJimjlj7Qcrv/yNrR3eGMWKK4gw45I4lV7AQPgiOS8k7mw/wStlNFCJU6pZ
rR7JN2M49j+2VfTXmMgCY6kBxtZyP3TO19a5nO0jOc3OuQW3pUafjpnTCm1N9mHXw7IOjDYR6+rS
kyhbjzBLBwacHrdEcG5zBnqxHxGX2dYhDpApSehCq53Y+zNydru6bRYQdnAgeZYUmKnRqO9Gigzg
FGDsKrHVnrYl4tp9rDpLrHzusTcUt8A7jpeSy7hMwq469iVaR6Q5enLl1DAkB6zf4oK98zzWAoYC
vf2qhOune1+jxH6FHfIZGGGn6d2zI6OAuSVSvT0hzAeFHc3gsa4WLfQ6VZWjHn9D0HvDgLoXN94D
5iFCOL46aeCdWZSmdPU1MwMwLVk+W0nZOaYdN1ANxdlxCfsr34FjYDIK4e7SHgabGCIKERW0Jn0b
DTAZCRSIwOP1vcatWazj8chIXMcrrjF0if7SlWenaUehvlClOk6MvaEBhUmQqocldQO4SxvUvXPt
YQygtQGaZXWX4JIb09IriLUmT1zr6l9GVOeyoNd/jf1lUd8WRAW325cVHKprZ57VL9i1jDJk7qNn
Lx6AFmeJqqdBG0kgfkK7wMdESrCEL/E/G2B6+i9oAv9iZSJsyIXEg0ClIxbdGOBKcB93xcKWmAeZ
4XmNWhPUi5tUe8LuDEMfKOM01gYCvBihmnwiDXNMf4SXJ6N0AfDZBVm/Q2QPx8VvuOtxuTRVSRGl
z9CecqtEKxE4R0isUnlCvtTrEgjAjFfeL4YaLQHbWBYHmTApR5uX27GmqLKsflus3l26LgKXXDMz
wstaPS+5l8WUQNLiY4NoOaUpESJwgRAzEe10mzY12ceeU6QZSbq4Fld2u5nS/dMtnNT4ABTg/Lg4
bSacpLgDT2elFYoZ1KCvqLgNEh2uDFSvQojtcVkCB3g+rJ0dCCyZpXVUHxHR7su76zSr0kN5NH8X
sdy2jMHd4yg2kN2VmEBt315J1RWW6Fk2Phtk1+5o2EgCkURmwFtAFne2djfAenaDfmOWdM1Gk03k
Ma2kombnG+bFQ0AGp1EutIwzmkR5jdc2XB67i0sIForqUxS//og25/Cn6i0GKjcomYom0THO+GxG
2BzYGFWZQVVD5ew6daK/V07prTjRzjAqKg2994DFDG43BgeTn78ndG+gp+CHmHacdaPjSZURoSjE
Wj0POACZz+Axi+vPuo5NV93FQfrjfheyYFwda0oLCev+JDpc3oeK8XFF2YSNWTA3ObObS8ES8WkH
9dDbRwV6G/5iXlHnjYaIAE4bFbChppApksSPO913dGHViyug/U6eIV/cVOW/9V9r/M1pcFRyPk3N
2TDOSFAe38RzGRrlS8Dxjr15MqPTOb0OKPSEjUAjyr6c80OFhv2kuftrNGs5WPcWaexCTaIOXB5k
BwEv4AWMjGF9zLI+hYbOowQ8//mL6QEhuyAQcSWKTPwM9WRN+GCj8AGYBrvDIrNwLLhHUjNO4/7X
lm4thIQ8yxra31TMJym1Wg1ljhEphmIKFuTqxQSiYbztgJ5EUDsSdgiPMpS6IkpCg5o1K/Uot2Qu
ClhbH6xIhJ5M5wYZrhFrNGTG9U4urcK+Em6dKhrWwXZBQyqSc7SdQFLZhXIKQSyoh63w6tx2Kujx
5b1VH03+7IySSukvQoq9dKb1PsYn5cHOAAoCcxlGKYqX26A2xsjtEDmFaVtB4ezr9kgINOcw6UK1
M1XmtdeDBWTj7BN8BTVg4pEx7ia4kbKFMhV67mxXs6ySiBCqrRd39zZBcmq7NB01MiNrvoox6Naz
rXtqlK99u7d6P92ynbeY9fbFcP9OwoitThYHmp7IV4JvIxAtmL/5e/cWZqBijngBYpu2m9o/M7GM
q2jAyXj48HFtFxO7ijLc9UrVSe39vzM7olx/ZPrsFBNdc4kZKc8RZCtcMcpfr7PnSsbp3lOIJiRb
NmJQuuAExHlSgefkrHarWV4OF/gQeb774ktIn4z+PVBPqsxFgqlchq0X3JlHBJ1iD2v5MXEOA+qF
7cNu9qjknQmSqyI2wFx1O/pCLAiWSn01Zo7lEiNY9y80KItI9opxOzb7KG3woXdjFhs8kszQ9WjV
nEVFe3ypb92Ha3xzeyylH+wxR8s6rKeWfg2moU6hktuTfQiHQjCD1oH061cAtG9B/s18yyOK76/z
4PZJamrUR94pHWonbTcbQi0ZPmRYN5jro5rwJ/Gc26p19txQWafazR4r2vqE6s4gLvn6mLLMyvs8
ZDzjU8JoWQn23nzcHDxAjhFOq3cPKgctvUE/q3OkiKmXeQoTM5BXXUeX59mzEN2X0gUC6045BL+X
/lO+aTDT2fm2y6s1K7hiY8cn0JVuWZGRweAkw31zP/Uk34CdTJs3DWyrIwaBR4SlKpPpxDW6Gfru
u8Jtk/FoFoUdM1oUEQ8nGYlRoDrG8PIqOoNffVE2ZBzTuGG1tHDmQF9bPqA+/ql43qFLVL/rs8cU
txCXICQgp9O2fCzoMt0SA2XxFd64l1qAFoPeUh045TNMC3smm3/wyvozNDpgTt8ZawIqFjO/Ce0V
hjgc68QEf0RFtJStgYZKiTn/jg+ngzxMMxPqgFWzUPScYm3ZreM4Q5pqNjpJRjW7XxhwKoVusBgn
elXSb7tpWlLfUcUQuYLNH7LRzAMZLL1+zvHz82zzk9U25B3xs9P0jQSKynBUv7aKVjJcGm7kGiwR
aEn0PbOqJYT8PKfxc/Aa0GyfvNlE8nxX5Le7q3xBf/kglnphkVe+ANou/jH1zDKJzRp6j8YO3W1Y
VAfYk1epmGcttk/g/9T3pFpZSdxdrUE+v7ipUcigYqq6vUmUm9ewapeRXw4aoa7+qJIn+uFfFVuV
AHX0yS9DgLU54HouDJqWfOi6DRgpy8qkHc9caYnDUWTLGMeTTz+gQlURvRBYguKUlAIEHAL7R7ZZ
+PQ6keE0/+7h/c+Ud0PqrbIeSVdl3KO5vPduXjiwCLpgOjhru6faQ3rSRxR21+x51zpvF4LLITos
aj+0xFR+Mq+fZdlWLjLx+6q6AXFIhGGbI/Eymk51+b+DBmq1UyW3/oJCnXoEHqa3RdXFLG5zSSh/
7e9wL+qP6gJmf94NnNo+I9BzHIAh8/c1HpLQpXuixz0GPt25VGqgIUKKnYCtdP6S6cY6PLDQc426
rfYQJxV9yLSWOwPdAOYt1jeZ0z84q5Et859uaoT8AVCg9UpPWO+0iPgCfPo3znyUlGqCEcDsrY09
CZlP6PIhWWh0riX1zcCr4NAxcQhBWIXWZ2xkYzstrO0AQDfhbkXCorB/ZZ6XksOSRDiDbH0Qv+fn
+dtyEC6E85/ywsfmTdl3k97MxTyHl90m7DPekMmSyQbwLL7d39t0MO66MqGJGtN4hMCrsNi9VB9m
Z7UOyFsCJHRhS+O2u2xl2Ry7ZlwLo209X54gtDO1Gah0Gqe+athwPONlHgIGNlQtiVxwZF3LS8uR
3G7Ww926tj5e4BLJGMMf4Ms3qIOqiC4RF+6p0g1wogBLea2ewNQ3d3jmHB+COENbPjdztM4KOFpe
ApFyerJyslB8TDtb3GVFP4B81XFn7cKjXYO2wLgy6hYOJ2lsz6M7wst/R9TO0rufUokOXYDqGnqL
dFzl7yFuyw0j00mQGClySjKMbwYdnQJ5yQOu2soBiusnqn116iV331TxKHXUKCXHLmSBA+v8CJdY
XobKAncPQtALHsAFc8fj84k9GpCb0Of8evdwq4mJn5ANqwqSc2gK3Qzg48q/ld7VmOOCkHZ2a0AG
oDyJzTl6yXM5XWPHKYs7LH3UWnumRn3+rku3FkG1RRQgsJaa93W+9YFnezkaUS7F5orH/GG25sVR
V0q+4A3RNsa/GXuROSLCv/i2X/TB12TPRsAIY9VPpAi9L0Mm6erBbEcy7X22RJm3z5LFHSITUD9b
Og1E7G1IF23rPMhfpKseSuhTHiDwEUxNNcPGzOdfiaBYncliRao0qBD2ebSSEKkD+qgTFn9XcCa1
vmZ/wcjgaBnwFYkOIqJ74zoYiPvG83fJpxSwgy7f3Y2NUkBuP53GaWuh6NO0jb8TXUvMuPYPxLvd
1+RHmWWcFVOs2ntPJbP4nMR5VIf1/+PD0UmhnE4KH0GTIEYATEkEp6E9q73KAmif/SOAOdHf4imv
xGPFVl1qSdlBFSe4GFSgRtuIQ+pcsMCdKO7FXSuUZPK9GaB7b5uQtrDKjpDIl3S88en4mgY8gsQR
WplH5jmzmjqsO9ZUrBajcB7QDUn3vpxWgkPRI63OEKsGwSL9Hobm0NNQqO2d0NTX0Uy+ADzqDSos
9byhslfMyFhxI65eI22PjZxeIWx5IX6WrhdGq0WZicgmmnlXGxYJFaXPtIMI2/yjvKcSrLZlGLk2
067+NMH76b3Jbu7AtY3yq12Sj231KOl+Z0dr79aIgqq1K0BYnmr7aHK5yxWwC+1GY439okmBfQRF
io1abMpz8ZmOIjb5c65z/jL1Nec+zf9V8Ht2WRmaaTYCVPeOK/8bvgs9Qjv0k7R8w7hqK+0p/Hee
ahmqzCwwL6nLCL4um6qNfw+SOyBmT4bG5NVRkLYfzs0u0WWdGz+UXF5ED6uiu42g8I7ZfDXUeLa6
7+wkhpj8S6ioyuBGfvI/neyFWhcOFXa+K0W/7SlrzZfnCpT6Se9uNZJa6/Cbj45J8A6LzMbYDW/D
sMgdCjQiE6GGqABIn87mb927ThAoj4ElTgC3yuIQLJljG8gsfCphijt2oXVBP2Iy5eVjPD4TN4jj
uRuU0+v5O3SR4x+vOh7x3lKoDJbCB14DUjytFpkNqvzyC/vb/6U0ynOBwLkbX73buI4f83ebg5Jw
p0mYSTVo2igr2LXiGWdlxbp1XC8F4U7wBtce99XNvB8VL1hVn08ym30apkaii+7E70ijzZFaClK3
NjiM9s5yCgVgyO54pVoGYutCVfWzJQdFK+yYgaiGmNRZjtAv8RB1fcLCnhZJCfvLoKe/0G3srjum
Z9hwB41m9S/NaeU9I2MxxDol2ZRO7oRuLtUTVS4C+lZ5KSnh2E4vLdMlo58TnU+/lBLs/LskQMBB
k1Q5I052LsRtPhj8JfJf2Dwe+mUvDHXe/pOopShloKZSbBAAgBYwukaUt9H0m/5tzANhTYNVrGO0
nPpUNDV5ZNll9gcI3exr6pxjtBOW3XOa75ciFfgguYmmvFofknG+8ehMewcIXaI+P4QbmdBK76bA
m6HfPxQf9AAFYOpgjhKw0O4onjwP22p+QYj5iYbySUUqFlVFzc9IWhmtLfyqxy0YEpqQxVR4Q+Uu
bX6V8zNwcC9uHVpocLNo+eGZ9bxJpaafEfBe/oue7aMWfKysbp9dyQsQVoUtygH8fEb0PcZdWgZJ
Q/lO044ZNYvPPQOiJ40YAoD3qlPPLnd5h2Yf5ytBfGFtumEmcG29+Wu5jGMa65BDcMlCBO5rgBjY
u3rgfnKnVIMG/o9MlaQeqLk2o2o48QdBEenQe6Ly6tStx5PDEejq84RpcbjXI2SOzgzamRb4Z15S
odO4X85UPl5Rl9PtnLTF7jEov/1AYzBrUthciIuMxPT8tpBw/Fexyuiwcy5nFAo7qZYpaNCFG15p
seNifkUneUI2Q5CTGEm4vrtDnUbPgrPltvlHFT2UwBYSJeZhFL7wwYlegTOX2F/IDiMw10+5jgKh
3tDhr2crhIe/6QJxhVM8GO9FSsOBnFMCL/MDRpEabMK7oRiNIsX3JQB4XP8mSO5mYsE3JmfaGrHc
w+0EKL+xiJAV90x9tjgdqbRedf5hwp/YfrurqUFgvfd+l1bThJCcVnUCl/QSYoTe63Y7hLfJYOv4
TvFRMXAa/c90R1tHDaD6x5xNHvxRSN3BSe4mczWS8xA+6dOayPnGveZQnsiFKLJXBO831mfnweCL
KttcGDCSA/M2Ahfv61mMroDp2l58PRhOByI+jmFYQZJvjZOTKnQ67JWcYJJsOlTMPQNOtoEYM+dB
46C6gsgMLKv/Mb68wM1rkLoumdrYPPsIfRsAWSaiM2exbQVksHmcUYxbvE8QSjSkkXLrRXZ8ZmCN
cmyS49CAE/MCNkWkSsSSpTCugbagtPXmp6t+oNAoQTDjDB5evPzo2PdqJaqcYDLJh5uNL2+Gzneo
kZQh+vwZqv6//VzL9KbgpTnPq0CZdNDBMWuwdNlVbUAPV+Bq/SvLmSyTVdRgP7JdFC8gtf7ZlbFI
K+hhhbsa/8nVIhV5cyHCZlRo4qdTPAXnUQDR+UmLYF7+vKxyrP2nu5ntUTygzrrqeo+RCWyJFesl
CJR926jHb83AsyxbIZq+sXBTHJWrZbvL52P7RLi8t7rZxvJ/pB0B3kAfDxSO8eCUiuJSWBDbAZPS
SADciCvx4muCBIVuKBpEsvbNIWUcXTBF7pYcLmzOKFI5Mbpa3/f8SMts3eWyWufb6sT2hHbbjNbq
ckPWEQgSGAHKkk45t1mVlKX8TnfuaG+AFJnfQP1LonxxCKhwMvsHEjoHYnBu3/djIrBu27VYdo8i
bmNEqrLfcZ1ExD9EBpZns74KuYRIIEac2M8riazQ2YvMOBWL+L+xwLOwhm0+nIc5Ln4/csH2iv1K
z3AiP0nWRVganyPrDUXEMiN6wzcGHa6FWv6SDnrGTku3sx3pUB2eiz9/LP6eIq/A4RYPAB93dnaj
iCNrRM3jlefC3AFO14Bf5M1BeVkMMXhdHr+phH9iVy1Kk9kMBz6j8uvYeCBsBiALIz1cpxPohvix
cBUZ7Cw3zmOEIAV+1Dxrb4uqy8D+gSQJMgRdg0w+W98vMD03iVovibzGZ9rDiVY+f4Thn/YyF+g7
gQrfxado6/VCgmBSyXWNeHpQwtWEu+x3VQJhcGfBKs6UcrKMKQg4S2bJFe02d3kp7mhOvvUWs9bh
TLb+DcvJaKP476AFl+DaU39tdu2dwKQH/iicN0IxTdwgygO/EQd2MPpOekGk3r23acECcSdfpIp+
NJK/R7RB/UU3X710xcIL4cq9Hku+dZhvLPo5rGPGuADBAxWW1TAOzFv4jQd3afgFiFS3Obf27aCz
u7iMvPk8RRzgqS1ZmASxUjy0Tj2AP+jCY6aIKqmboe7rhTi+Xdvr7bDNuCinSID+376FMIo7AXxs
6U9smvBGi7Gm+jakQxU7oRmrkV48nMNwsLw6ZHLIPqHvht1S0kTfgYNrDMF0fqZKbMcsFgPteEtr
2uA+1AT//w7D/oiXx1822iE7D92bvpri8gKuB8MGXa/bMop7f2jsgnwivoWNO1JyEX6NUj//S+px
1/TfqTYeFKX9rb7DkdJGpbv5vJ4F7hGTUFl+v2phUVt8/aL+nBzA0TV39CYI49M9jWyRwvWTYVYp
iPkdqbLpYtJhVQ7jRfaKHxnMQGNS/XLwQiScS6vT+DMQ/B2kOBfuDm1Ltk86O8P0D90Wt5CSrHpe
3G1pFqzA1hx1NJFw6OHhvMramVammTE/Xtidn+TAPsmTBQDlpkX9q0H80Orb44hqQNfrlBly79Tp
mMe94fB+4aDLq9t4V+k3fTiKckV6Kx4UVP5fulirdJM/+/7DkywQdmg4kJgx0qxesleFWExiXM6y
UddggBe06zEUiEUe4yq0Bl0drDpjbIWoZRN4cj764UjvFpeFoQ/GpxXrZCY//955u28sPhPiJi9e
/ECKduD13pzrZdF7/dkOOeoyoop99f1DdMqtZpxONbytuaDKDpvBeAzJcmP6n2nT3fn5XbG71WDK
dH3+YFhGFvwAUwrNGXrRuZFy1Ye16T/S4y8es3LSW1z9BSUqpFHOCwialMu+9E6NUY6oWJUugGZf
e0Ed2pAjGBw2026GHW6HansDjH0jP7E4ddwyc6YGmT6nLZm5OY4mA5Gj5BFO7ccfH5r20E+jPExX
Fjg8t93rkd8eGgxY4wCL1MxPGgCD5Oi2NF/uyhnWP4SNdIcrimCNWidOmcS7ImPofqxkpXJUaXtr
qubLNEP+i4TyY/34mqwm37N4z+rN25PvZUXLnbzHpJ1QClJztgcwlhYLPDOxMlxtKsfjxDeYLAR4
GhvkqZm+8/x2mzxiYGrUCLEWElHLOBzx2QmUur7Eq86oW6VJ2wqxrabJBs6HPlPtsNII6XOuzI4M
4vdoMLvEkOTx3LD79LyV7rXvCxVaq8AHhn3qgDo0SwWHCPWG15md5wDFEQg0OH9TyT1sn7UQAz10
SfAbQshb+fr/Gq7K13az/36HqPbjwZW8wrkMsetEqjc8ZdKc28AJVypNd6XWmd5vfgmCvMlcrTuA
pmks2LEWAOUWPGQvr9mp2sTa0S+HA4knPul0p3gqFekESOQnUKJzxr8U76LjjkKSfmscsk3Idrus
YwkyGSSS3PY61qI6i6aZXv/Wa5blz28LbY1JlryqfIsvn7azWAGLSEP6C/p27RgsCOkpddiP+M5L
hVMITAPu+9AXXmAL0m9fBVsk1GGP37nfH8r7ySMDtSgvb+V3geNNZrpmTYUxmtOnEJdCSjUQ8gO8
dzr/jIP7WtoyXqRXqsJ+0u/mkL1om++eYy0sG+vRd0UqztgwG/S5LHtDdZ/heqQqSRe0dyf7op78
0P+6iXnMwdTEBwUCBHaD7oJ2+tiDBHJmwuqDAlRpxVYsYd0ixEpj9DaKLxvvu0AcHw6NuwYHoaa1
olPxJ05U8sy+ozzNAfteV3SLvUDHfrTY9BWCNUzkand4NcRgXGENxB271XIA0B9OCPqPkZI8Vvpb
Ogt70lecwnh1U1fy84MzA0/C4sE72EZ8D8/MQrNG3YO4ejuxJhGMXHRhHQjQuRSz7u12zyk0/IZo
VrHncPh49kOFxe6eXFj+izPhHEPSVhbx+QDdrXeY+6wgzUEECuJvYAKD65I/McRYk5UicAI1JFWO
8+BCcCi4GXTnchQfAiLpw5r1VhSNHesp3Yhrn5cebq1t1gOYXsd2iVl4RsOolbQaFebPMLhsN0a4
DBatlSK9G69GiUvWG6Mevvtm+X7tFBLzb3JfXe/PHt3stItGOyleTcpYP4NBqyB0O+L23FdlnFVf
m11LTOcB/JKxJCx9Ayxxpr4hGW2EywJ9DYokQ3H6dqSNOZC+rMefngw/1DbiHcTViUpBhaID6pXg
8Y3W4JBXBH8cc9Kwvsbca4R0je+2AHmABuCY/U7aWoThuk1Ipf/Nq/lUclEuRdnDxAd5omh+A2Th
TT9fiwe5HggrQD2zJOje/yKSOoR8FB1n/++dxgA5KMN4DnnNM21xh8EKhsCB1Bu4mmEYcCF1v/UU
bU5Ccami21zjdNQRw1vArSiZa6VfOXrDHE9BkEzZ3bgR/BmsmLXwPXS5pAwFOAnqwzzr48wrpijl
eRwnkwDQPow1COK3MQAnUX0fZ5VH4xMlqbvRB1uP3wDXwWegiIFKZTgi9ILOVauSC07lELJdvHe6
gm9ThYoBgwgZy+GZQgpUo3mSDW7Gvl8tgRggaldWLifasSkwAEjkteaXV7HKbbLK3/sbHCmJJVVs
kr1kruN/w0k2EsvmE1c4O6eNxaWm7r1wzV/OZTfytkKJsHQ8H8K8Jzh52M6BUI1cy8MAly6kNb3P
NKa6CU7Y7dfN01bIBvKismSp5jEGVI+RBscYxxAto55xGIpOc7K3/E4ZN2EY8d02HbMqQLI1vpx+
pbnYZxIlSEfPnuKFFEkHed+vFU7nJ7LcXa/dkffNPefJD6latFMOqBcGT/jYtcT3yZ8cqm1G9O+s
I+JdqhoctzbxBViQaC1lOThY8ksopHqJYj33A/jLII3gNsW+tbrVDUo14w9fjGXX1wLgc+O1o9Sg
IVxCI75WyRFSaZ0FEr/bi5prR3pPS06BuOpwSEVbPGiYZ3mWWjOIoiu+Yb4Z1FFtOGPClHueNpoX
S/mKs66y+uxbnTFbIT3sKKPiORnkCk8TV6U/reNAqxD1XP1bfyDjlLSkfjg/twy7Ff9dWlHVe6H/
gxzmNxxylYW+E5VlV+S/K7V9VVqzfqzlBjlC6H6WRZnl6ffFhPEwf+/+/I6914xnYKcuNMwbDVCt
Exjj+/+8fFnpEIFQESD/i/P3d+Lc+cPSgkkeHp9F7dYTd0K/fm64KDk668s6dLn5O6yYdogrGjbc
yDWGKg25SLPMHZIq4xa7fmJcAa8SxcWvx4rLdc5Nsi3T7J+mToY74sNHcaaBoco/7R8TNLe5RhPf
MdevwYbgFgxQUS1yLdPzVNyuo3BXfIGMJhHThQ+vZ5vVjWv4rozMYdXgR1BjkKVsKqv1857A9O+a
rh1O1tWbZTt9/LlNtU4yx1MyXcI28+4YruHYLAacxeWrPUsscGUAYKSlYQkAd1brvSO4j401T0Ok
NpiJjZHFDhuW7JM+zhGmAg1q36xGjxO32v6TXfGr8evq55F7DYVwIOdwJ9Km0xQ5wvbGOp52zQhg
cgOh6nFXNAle0LoOUyHgJvDMlObQvDuZgfz23RuPOR06G6Qa7fY4JcY5N7fEbFiQJfy8LCGh0iwe
mILRMLGy8VKcA4m6XEsQA9JDNhS1q8+SQ7rvN9ssqN0YpmnZwIbirncHHp4MtzspJxvi4a2MaDdc
4CwFOA6IzjWr6snWeMcEuDFh7sz0X61463ji6VP+4PkfpodnvuhQLfdQJWyD1FNU2hG0U0SXJMwN
o78jDx7rYr/XsS5LkU/MdV/WlPPaCwv1jxbwJ5Zy/0RstKsqTbyinihjJ9V7rGnBiutBS8A4Tinn
bDcFq6DCwi4ElQ0QQi5hYWg++MYeGNYvcLJYlu4KcLmxnry01AHxbMe2F1JdrOZWJILRxrJcpiUL
9mwpgPz4O+hUJpNHjYOFwXFiOodkueGBXtMruCUfWyHn7lmum0VNNmwWZzDkGU2FWc1g1lNVqmhe
unJdw+M1QMvslmYglIcsiKbrjiCVDevF23n6X3HhBfI4bfl/FL6kHfh/qAYRyVDMHNFW/bnsQuPV
Nu9ElyBCtr1uobBZcUhepgNTe0uqCoegMR8uKsdTS1eOw1/Wiq0oyIfcOf50Sh8mrgYS/pN/q93V
3aH+F/0YKNflMbySkEpVrSaLF2lXgQLXe/lZpKd77tuX8XBQSfiaAP/mSoW/YtMSD0CxMK2+uDL8
iLkoJgH5KxvxWRrr9jFsFJ6+Lpy4ZOncrIzjC+QHFSNKARlG4sLyU2+pXdjt2hAVQhvLRBQFoH/o
8F510vYSeZTaMufDPZsiO56HBc4RfOfW5FJMQRkcYeEKbJgms3uIAxeB9EOC9IJhCa6OMBxjSFer
Z+unBS/jLFLU0LpHwVw8OglfgwJpY6t4DYFh4QxWP8tU5vCoMoFrXtNphNL/Px25kCgIhG9PGZ/a
2UUoMeIiDWh1BVf7rEyDKzkiDv7g6JIf9pDKaCb9JBi2jVGtLukck5V6W2lpsHsZHsp3rgAqwmGK
tv2//0RGm/CHbx+zxv9ALpkRG83kuBlRhRtrIosD4r/ccmj02ltBVjIP82zsuu3OW+43mzSPMEcr
9NhBz9nUN7X9B2VT7GkN3Av+x8iAD2iDrlnRhPvalS8lYq00aaXjaw4QpHY0BVtdF1H3tDiG4Z4x
JIQ6wBmVIBs1xqEt6fv6ixqvKf1rQNSQ7MOWjV570Ae0frl4eZpbVv945xrJGCcyDj9Yo8DB3LQg
Q5EU87FHw57w8k2HuuF3hdbH1iWyHVUGoTWbee+4zRkSp+WDebsZf8+n3tMA00vZn9rhshQ6hndo
SWfOa3isCUOwXsqDlGcFClXUzwPyXnkenSJEhsOeBBYyJ8vg7qZyo1ceXbsVk+R2Q5tOqu7840aZ
q7TPiJ60oqExhn0J8nghLIhPBWA7lgSYUEp06lUo8Y0EGYxe9ekY43iLOmG44cvBN4e1awBduDih
38i8yBM39W5ty1dNTAkQ2zQkQIkqg/xsbWRO86X4Kff++ibgemgpjbODRBYhf8f9VbZ9IHx1I8i6
0DBColmguH+PGhKG6zHqoDx6hPI1fjT6OzA45KRMOU89LPVg1bvtnNWYaih0/Jawb3WskeISRnhV
lufS1k0tN1/HK1UVs+Z8aRWdwxiCKfoCag7Qten9msYOSiAGQsuj1yEkW5t/KYtf1pu/Vq93HC3A
83DQ3sZ7kqg1wVHuK5/5LzhyzjTOQWJdTZjw8UgNS0HIS/olkONRfMEniSl6ZtEr/+JH1C+GHmQH
DmVdFMN2ZhrTt2SLpqIi9YXh3zYOs/9XfyfjXdiaZ+8p46goFrnpqwktSg0i+S7wlzFf7Xp3vQb1
WC+s4iY86AT5xMHhYfUrFV7CTHgt6fEjz69wbfkMKlT9LuqL0fNTlGSJZoKSi/s8d+B3+wwzmXj/
ZlkPuVoGs2hF7r6oNG1ANs9G0imaTuqkzbYKEgp6GW52Hm2Apg7vJCvnRDnnZWSK+0G5HTsAFx8s
RHqomRgevfVCoxqJSLACfrc5a7TBmiLGRbm5EEu/pRUfhYtFReNTooqtMdR7n0ycngZMfaZFcXAM
6ZajV0nIfkA03lEoOLx0xYRxoZ3K1riYjnF0LxQTEz51YItTTnYzLdBL+Y87gxtvBNZVZXBGAtWD
HMsq5Lb2cRDpo9UUZ2UK5sT+AVKeCcjMUQl5rLAE4CRjj5yV5FYDAoCIcovswax7sG+6DZ3rJZMA
Pn8VEJWDWQ04SR2kfNycMNBOhkrXgoSk+KLIqUFYylPTTep/njcZ0z0+ohRebWQrWYq+3dzRCWWO
AohdtdJ2BF8p9Vq9JnRxhRjJLEhOej2qe7ubk1oKoD2VFRgs6rRWA7fQOUuSz06eW38lk5LId2I3
n6ahq2LVHjDFkgU4i2mHXUfxcPHCJCySI9vjKcYlB65yfCpUHMNdc4yknpqpwvNxOeF2zuwK17e6
Fscpipe/c2/fEplya5lkrCCkDR5cLg1z5JZ4W1RsOUINBU3COKOXojU1GS4nBfY+sCCuDBdtq6bx
xJiZKMZjSdj5Frc922+g/Fx4R9nrZOyrg6vA6kNwlCw35xH2xZuk8pUQrURL7DyylsmC7OUet7j1
Rd/uw4MaSBBvnzpJzgQptt6nQNqvlj2bE4O0pxxXzdO4vIou2CV+6kGqUybByQ6CqvQC0sLyARpI
m7a3N5Xt5mvdU2NTFzyhVfF0uRplB75TgMva056ps83gwBhXh09MKCYadQQ341BG7A/vZ7TzcYQr
0N6hwJzfi19RZHWhmqHu7jx4rWbz0zmoTOKjlcB8/gZD7O97HntuJFPCSCAQJYPk5ccVtuSTPtYr
mOJb2lWiS2RvIE9Xw5JBEllFnWKB9yRom7upGXn8F0FCRE/I/PTOdYWNKW/w4eimnq+efdvxxMic
b+jJSZfX220kFBoyUx5Dzi0XhTiK3X56W9tYp4EYT17+hhg5HD/UmnxjWBZfPb5PQK0in7NFhXKB
g98lUuq+PBwl2kwMOcfbNmU9jd7iNGUKF8k71HVXaOeB0U1GeRNhMYlHxyNli4S2SoobOqqwBy+s
pyiaiVGbpLhNbHbViEHlq11N0RK12P6/E5ZCFeuPyNfiDOofs4g5uICfZ6Ax9WZN4ew8FUe0TvXN
NrPY78SmLg6izvHeqPLf/tVWvookoJvMb5Dd9csr8RbgIgGyaVNcRbfLKvltExyUfeYplOEZdD0G
CSkVckqJOWBCIZiVoJ5o0N1iCyn2q0fq3DODv9hge1jPG9T6o9JrAqxcUjjG9xqFZQ9nzlSvxC7P
k6Kr2cXoXXxvCNekIsZokmHc7Qf/ZjSYNr5RHuKu2ULUfHnF318NcPzJ6Sdslf8wl8W5Rh2f5lgi
grlSmy04cKqb8k5DsVvvh7/au5etaSXBQrPy01Rdqktsa35ETRlJwtM2e7sl606EXCcD8xVTByU+
7fczBHGSmjqYH25OsXoDqaRJfaMzxklRewgEUO4iVFBEh/MwJxy20umH7dbt6DA/2b/UjiDjqvEM
1G4+hbWVp4OE4ID/hSX0y0UKXnZykLJ9uYcsxcHg4lLzgnz7hNnaiEAwNzOfVwz7noEF3jEvDLBm
/Gl7REIaOal938/CsiXb35kYMm1VSU1FtbTWP0KTASywYA9CmUFlMmkMllu8vZIexJkcpx+jK4iH
Xj9B0Y4fQpEiIUkG5rQc5fLpSPLHZMv324c2HAa+Gb9deDYlQLMixIU9YOYNuBxm6G2ObytVBLRf
GidFCh11QX2p0rcmaKY1nUrOPzk968owCsGYTS2+UQI2evrLN0z7aVnJamHXdx73yAza7HGo2GGG
/EvQ8fR0JLhu1jKt9XEw3CL/TEyLBUMbEdR88FUE9MEXsfEnVY32Xvy+QHihpJJd8119iuGqsKpB
wy9LWE54fjTGzb5m+sWVbB1yVgfr0iuxlwckuKA5ow30vXv45mp6N5neoxoU6ZUvijC8MNLly8tO
aU21aWIU7lyIHIyLDPXsxoiThcgHxTLgw2xGdOQZfjKPq7RdM/FwRNcDHqZHH9XwlYq/gaxR9/+D
nwS9OEiBTOFOvqkNeCj7tHZTNisoej+mjADiypTi/YR/Ir0Ny5+KzgP2oUe8Bl000FGFou0KqVPw
4SOSanvDerbl5aGBOFOANpWXG0ZA5R14yxFaVKtar5I+lNVzIYKJrs9xbseqmEX5dY8ZHTz30Bg8
/7j/bgAw3guDKMaWCIZn7Z09XW7y6P2jm64Gz3kcyPxxxGepB+siEcimgOcY4uG9Fcz2KwrKcwMC
cTwZMTVYL1s5ADcvpG1zJY10fh4SkcZhNxNIHVlIc24a2mQAHRRHHCzHYswBog5HmQ0y3gMORTFu
TEqYNOKRg5I3/nmaFUsaeelksA8+lV0CSbMqjysqzQqEN+sQoBk1BwtxrcTbNKfAkWre2gBemkt7
DGiDW7VCzCM9db/U5R5ZGm/mpd2ctVcNn/eTSmKz2SxmM3iDFGSwuWuMR3xydxg9erZYqQ4QdQwV
p4zEjg9znQmJr/DzEMxBFWc6qaMOef0nDOMlBBBYdyBylyCAdJZOE1KBZwcy/u7Ki58jCc2cDhuR
CMWemAKKh1bTwQPsssJ87EomWpA15aaITPkUvXTRHCT1NFGsvOY0BAPb9ElsnAVkR1C+Nuq0A+23
dBdLKITRfUiYrJYqarhqnUeT2hpqIIkwp9pEwbLfM/P/Pu8iP2FHbTfoeiyYe31Z6rwFNC0mpNAQ
oXb1HKYLhv1a18OPmSEstbedKpKAukcQxFbw+xGuIDBJe3M29hWArds4zgRuVrBuxp8zb9r5I2kd
ql+IIQn0eFCbpJiHLTqz+aACGbt5BBvNTdBUr4ZHiAtJJQrAJb74L3t16lgGmSt0vJxy59uUHZ8Y
O7AkX/NPiAPYErki7lv502mok0Kpmnx9OPH8bPATYSg43InktOufec1gzaOxby3G1sNrx4AooBlI
EV6IfBjQcO/rdaz3eiJJvZ8SOmhG7i5Robs5pT42mx9xcDAtrL11sxTOpbtXztzpbtD2jmpUU9Vv
NW1+tIIM/oXqqpu3P9jdTb+amxl98nGsi3VbCBO11g3Qm7ueCHAilR+RY44wokpnuy7q3zHXS0Ff
PFUVYx3zTkMNMc5CArQ/dTBrjhPaauzDwy2+iz6Bsvtk671GDTiGiykWvFWCUog0VSsWsE5icWjX
8EmqJPe/DPmOmhJtW7dzhZzk6SZhPUWgD/LB+QEoPIf79UwVn9BOvDlLOJJ4oczdtOZ5MXol7UkZ
BEWEWYhd7n01W/pX2isdU9tMYE6pk33CmsZ3MJCUbL+8Cqna+Xsigq7D0hpI70NCuhgmDnHQBP7B
JBQsQutQ90UkscaxbvvPVoVZsO+7fiAAaN2PAyU10Pl7XNPzyIQKd+Ax5YmwrtNtznYdCbjNHgvN
fJDJsMwnqziuUmmZFkd8/OC+tR3hKABOmGMtUyWSoYuzorIADeXBpyRHM7htqQsI8l/2uLNmfQMJ
LKQ/OgWQvBbNOprhZHpC4ntNnBRp4LkKfeL3kRBk6YZmh1E760M9vLGJCzUaW4hVsjL+1qsp5kho
zFI9AuTziDvIK4QSXEvgkFFmOJETSGp7jzwxBFIfNsHIPE/kmYmUpAFHZEJ4fjeRuuRGWrTGZdfd
ahI46PWQQR1djWPOtWXLu3Wa1sRb0/MvYhpOIsY24o2+sBKVdMJby1CEJ8dmje9lUmH+4XtzJQkN
QvccXVPn7N9VAzEvvFYWkWbXZlM/lWwvt4YQI+5xO/JLYraC5yDn4oteM34ZOKfnAzjYDk8HQWfB
3uHSZy9kY051szvfRSNOgONMvCMCcSPSteCaOHbuI4a221oxt7a072Ocq7gMuqKZG/UtHk+IiLxI
59BbViKUedajzbjC3kU2UNcqwvHuccoprTx4heTga0U7U4lfhXA27rNif5XVZpp5Pg+azwmXNzBC
rLfx5/E7VLd/5xeffH4Q6b6/IHfmf5udgJAsl3zwvMQvtuShNJJ8RyVDkP42uTD0VIP2wedXYgWE
kEvYudAtLTtDTrBiZfqqUMgrcaBNK6t4ovgLpQXIU22cWHdaXxeos218AZ9bltXiKMXlLYGcv205
3mf2NzxY+0MNCfI3jqB8hlFia+hqrq4gYWmSu1uis0KRUtqn9UZigQrKlgR8igK8ZiySfaeyNewl
8iqvfo+uAp0cToHeMXhhN/gUkVV2brwMJDXxCQ+qTEG+N1gwLGYAoG2NGWFMl5NwTt69bAdfkNeP
v0dQYvzjNwSivpD8b5BCeqMKDx7BbjfC+NY+u8STw6DCqruhTmlHGsikvMoRmUA5Z+/1qN1PQKWr
RlHEF3jUbDrqA3ic6qITpG9Z80LiGKPMc+NucveaQkUtEe499LKAE+psCU4IbSbcklOwSRLrDFoe
1oLvJAyemu1O6nzpqGGoZlvniPooR7ihk6akAEav3eSTEeTXASRtOnSQ6Zao+ipOtnd6cyP6q9cL
d0kAHRYIwogrAMWsURS4wf5YwIrG4OdLBCfXH07PthwozSyIJEGd+PXDryyclmfxdgnU5DTjsMnu
mGGjCZnnygtUS0nqmunhPOZzOjvJDcPcZRvAWhXiVV3qFjT711IbEm9NTiE4qI0aSSlJX+v2TX76
tdVH3MrY2pF1MlqFJoWRRqF2Fjw+2+sqeSPTv4+MfIiaoQQNVpCiomFcEJErE1yuoEvDljxfi1/J
UzWStxbvh2jX+l//w/d/NLru8FZLUl06SzgX5o+o7OI+iCe69zQG9wzljarlWzq3zntR3+Ve/+7u
V4U/lga4E9MP1ZhK/5/QNk0lcLdQ1Ls4ijjexJW/ko58NGubVwwXvu3X+VBwmWkA9mGURsPShiqt
+OVBZvRTJrzchU8j1kwPSkyFQuc7EI5i6cD/muEPeI9Unu6k4mtAX73pzWXXmFOdprFRpTkN2ncq
Tc5Os4E0/xO0qdzm7OyHMJt4okWkoJA1ehcVJm4XlT8rYQ+CN0QwsDzs5h2gyrnBj/E5AddwGfBw
hRbA9J1mndPnO+Qzmz55rOe/w7OWB7f8uvtFHJtbHHbpYYVGHipriT+5lVKd9Z/NxZZSjoj09/Mo
/eyobHiBW+8aj9WTUVN6sNCDdjQMUgFVXld9y2VdeBbjGWjcQH4+tpC0JPPQlTY/dQwV365kRStQ
MaPl3wWY/nAuUKc7wkSNC6lV0PHV0+EdsZd/h1Mt2PZvY+Ogu6ERJa0wMYr1tg9eUyYHc5o6DFpt
psJqGqI9Y2nD48s27smaoxf8AP3mvxwkNAIO4348XOtCb+9OzI5yYwFV7PB9hD1+/GbbSA1DTL9B
WcAw3ftXFHARdh07aROu0qcXMWTPn3mKH291NkjCtP6IA1Xu8oBgm5EyV6FkJSJvCHvkwqtYHBNj
b6EF0jYlNgaPXA2et9nkZ/Gv/Z3/TwNm2vwSwprLku7g7VcQ89CEv6MG+jmQQA6R86CX+przrpcG
8ACq1TxdjalvsORL83L/Dj8XjGpQvvBC4BOlqcWVGnpkO1kozL8drcYn4NsgO2VseoBNnVNO3zIh
AHJX7OKPEvHh4EW9azTJJU3harqYe2BAz7FXdDweWK/B8RoNZfsm4TwnGuLsmf96DBQmKukNldvY
TXErCwl4Vf9xMUuau/iCbaUpIYq4CgDSs9zicLvWFL7uCv37AxRiHMtrh2ItbjLOLGXUAoHTxlda
VrgCrZUEkYeP17T0YlZ7gbmsU1zcs1yh5eUSqjlkwXD2CKZu8QdbGiOuLrcPI+1dJa4Mz0NxNJCC
EbJ2Q7ul4EHeTK2WA2l7dwxi22iJAWEwCQGIZDlHC8vxJvvosyaD9r4tUjTNe9DujTneUw9yrETs
/RSpWhmPSPDU+5yuSbE+PE/4E2ZLn9QIjy/GZNBoVx0f7gFRHdcLpkqt6EYTHVru9z51a9WBJUJH
B6aj4kT7vbYbubZJN9BUyCziS4Be+/72GyG2zizTzwwSSzQWYDOCEOK6LHkYVr83DpSqVNMMko5X
W4rcKWATpQez+HYi76vyf5jemDceBHyYFzIWmh0vjh/Zj7Y6IX68yz58rBWPrSTAnPZ448mHS9Qo
Kg5j7xMPATVWD4JLtnt9GphaotlPSF1vNrTiWrJ4GS3FBveY9qi3cE087glFXBX6szGmcNqjt3ao
8bx14oLW1S8sO8uDfy49tCzlG/UC11RQJ0hQ6MvFsjcdSsDjXDDiRMYShYHIi2MDyCTBXKkQLpOE
+bNvVVzy0EsLOcyi/L2UzEJfzpjQlTCd7iBTUhY2OzqEjKIG5x07jz8qz0SZWacYpHzNfL/bti1y
T/BO7jvSAlKuUn3P0720AsKbLJOYucmKzQaybW+v3iuiRXMHMTKU21XbcMbh6cggfG7m0WID7i8O
x3kTJaeQinDSikaI0lpq9r0Bt7tJ69V6j1awq3C5pD3Rw12UVa9H2xtco9sOGHH4Qr2IvYPq1gG6
SsuM04TDGYAu5eMpiZ9uOpXdBjsQvRr30KFxT38tCwo3m/mOfH6KlmhwCt80z2R6DkHPIvFC7LNj
LnjpmjC0qXLEdRuc76gnRUAm8I8mOG0HjqomoDFoDRhAf1OOtyo74twp4c4PHZHSy5Oeg8Mtb+ZL
GlL4BcUhVvXOIlOAcdmih91NBKnZZ9Od6Xn2zzg7UIrUNweq3ELQTvmcCbolhBe1T3WQcpQ4Low+
hMZk2GF9QOF0XAH6IJ/pBqZFUf/nU/Zy9y2gLsJ2djoz2yWyyrR1ccqCUn3dWJDPdhjDe+e6I73d
JbadXOfXSmwNYPhbfwX70vK36co3s+wCbqhyQs3WoCFJyK99sFZ23dmLVqe5frUM97YpZOm9kroL
V6f5GoCJjepDWLbdXiIx4805+/K1wUNzxg3tzPTofMkFLIDFLyCL4wHrc7TnxNrP1BjRVYw4DewS
xBhMhk7MogcrsLPxglitnZEdKj4LoPb4uve3rzWxb0hMoTnuedgNLanqkTXiHp2MPgdJ75FzVyR9
TxfaxEOckhLikY7GvIIEKGvlOlvC3fKZoT6R/oowsedvSwIEacKIqr780xwNslALJt8QiuKocMn7
2h0FzbJTyBfh5jtKNeUA5BV0ilL9SGG9HvT0rAjiq/+nc60QiC2jRinlZ0qXg1tPKMEBDXH+M7yM
G8HJlNjMgby3tdXxNp1Laows63LFQroM4pGMraE79z/9pHHErhk1vXnT+iS3Ca8lF1KVoJOTeY93
ChB6/04axThsDk6aAycYzkm9DQOD2l1YNV8sItFgI2pV2xO19/4KYbuGrGbIBy4+rFHn4jmqATxA
L9M3gKgrvFkSG/jCKFZkBopkCgp9FvpWRQ7aPXh18obVMxb5WensI96ljE8VLzNEsDK0KLlUFd0G
C72I9eSbng+KmRfKdihQJzVxd513qT8MbF7kZqMRV6F0l/aNQr6L2rUGVhlAAgbgt8XLx+jN5RJu
8eEvfwzJHI1yIr7ItFYNSiX5qRSQmsuo3sso8bz6H11mtOZNAEKoRnXLFVeQIqXPC6bKQ5rrSfx2
z2BHHL6sCx6AK9gGq1EdfHcVasfcQrILpCxGR8cBqj9cUaw4FueRCDTtNpVTA+shAVmQR9yS7pHq
K95ETA0ily1brlJArEd+LSX66+ghjGTzkJNqgi+mxY8inpFHw85y3pc63BcOiq9zKMoJu2r+LCKW
73qvaOu6IQsdiA/lgt6tcqisMr11vMahdpMHkjQi2HDzYG/HM49PRakrTAHocv2qJaCjSzUhke6S
nt9mPqElVpdOo6nvX2A4WySMS/pH3StByi4AoWHL8mWoamcCCGh6yr6VLri71A8kEmehK0Vjy+yr
CwZyJitG8CIW8FW4mJwpb/qmnfnH8l9gWSIDTxn/bqw75xlYrUqFbbuiiut1b54FyCwJiD/w2AvQ
QqcTlmfUZjKeqo7KPdu6HyZgyks1Jih/T5WjqszM4h6CRLYNJvjDm1yr/fGO7E5PcW2wkgwNMN3Q
yWqAzZZYQ0cYosP3zWlK+SuRKSP6cVXznNfFuzopii8KZOSrdu8+6aLY4SKk92YpRLu/ksSeLVyj
stYYEcPDkpX07E73gSDXcq2cNS2rbw5q0dfFghJ4eTIbJt1BV5GJHWrKp3uHR+2goiG39ebXf8lK
PGT9EtOWWeSRdVIXFyIuH4pXpZGab9Fqj9FMiYPm7F+7jOINevARM4y55wyxy3CYNh2iILlChPt6
+w8dg/QmIbJwyjmA09BnEaFZ3mg1m/A1NzMQZtlOIpFVs4JjIsp7JywsQxdL1rd3nMS3TKdNExDe
1SoWuT+df7ktAHcwV+WLd6HNe80OP/88+O7+Q/WWo9vepmyqY2LJGgumUu5nwLOw8SdRbC/svzm0
iIGNxf/FFyzmj8iYe3lYCBI0qFkTFPXKl3GAirk60qH03lASiv817NF0TQ+cNSzM0mRJJbjXV/Uq
35ELSYyajsqocxhu+lWPwxlwkVjjcNldtQd7REknm8XgqZPXhBgrFkOkCEM1Jja2PbcHT/s0/VTo
LJVdMFq7uGEoHe/Vzzg6MgCzA4+AXsGPxOknGMNbayHpa86X4U2fxalEepy7ZQzvBAjCrXA0iGgE
YdGmuZY30UtDcxoUhPbCGLaO4yN/X9RkGllNiD2hUV8ijUbxJ0OAiMkRIPkYfGLf+i1jLJ+s0d+J
Lzp3TUHG5W+AMXj8t0FWvkEWQ91E45ZIYe0RJGFx3FsN2sJDOdPGpFBfVtgeFmhK2iMzUiNyMSjF
S5uqh6yYPT8oOuiy5pyEcEO909ln+8YOyDwq3GgsAKBj3FNllV/AWtTEYBetcn6X5RF7LnoXFcw6
3XEjP1BKbCLjbxoAT9WfHECBeq6QfPKiIgs/15SvOebSKh6DoQArWbQpQseczMarZ4IEeWhHDZLp
OvPqm3DNf8JGqtBZPLfZojUnJZjWr6naTdt8nZmhwOcQt52oDu6iRkuHnhdNJWLAdxP+cp0BoFEy
wU8p4a0E4sY3+y7uVbIh7+eUim1FdJw7zDWNAasXwTFPEuj7asleSvMC6v5i4nivnN45chuXzSvN
mLPogb3Kd15SsQnuJKMKcoDYeyW7l8IzyG1fd/PLgdGCZ1R4qSXmxV49Q31WgtHX05hzehY2wR+8
pjO08F5+KggI0e7W2YnHZXTpE6N0dYjhqHnowVMP682P7NAHfHNMOZqMkS9YtRELju05m12aOhxE
FoqhzcQ0rK1yWZKr38jYld7atoMGT3ePAeUs1FMIGO4IcepPNsUBeFmUgNi6eqcgKpxYLIW777dY
/eQTsyjpU0bSZQeF73Njb80f5GGJcZSed4LjfeW/WD2YYlIR4LGMoZJxETBhbS1xc+e141nbezGa
H16Vstiu2Svjifqt+PBzm97fVt5Lq3NDEp3RvQNHvqEXgxx8QERBy2SFOZyTvVG4Q56nHBL9/Ulp
zn9Grr/U9Pl/lVU+W3XR3dQ2pvoB6KuX1M1qHZlZz46Rik74rEtq0GtoT2Q34rD8qJ8XGbMiWz+c
98K7B5Q7uVK6zzdGTutOcktVKUfPPeMYW4dSUmw3QLQZ9GCjv44ILlMgcdOUUgeKiBJFa4o0CskO
RgThKYGu6o6TUNvLJtRlv9EZvsdWGV8uiFxFzCUMwydvB4JKUOna6btymfF1iaAi5J2ZzudGiV5q
VakhqEb3FOJpIhPx30u9jfzFpsDjimrToj/SMWXIPfcYiGvLIabpB3Ur970OO5Tb8W8NpOmVIz8H
4tqYLowwXtbnoPuHRAiFqtIu6jmdJz1wJq/M1JUWY+LBI557xaT4CjEdyo8WgtMnkmFIdfvt6VgQ
xHCwk2XKmuwUCyUkaldjV/2sdhF56g0vGvIHd1kH33PTa8tNZ66ky+2RNmFkB8mZuPhl1IR14/bG
CXjNSI8X0aACdF2ZX38fUd4pQ/o+khhDWaUMs9MpdeB1vcc6pPfsMrJu4PCy6bbu1H9r0MnsX70J
78CnQMgdZVW3dgiCG/mr1L6rGW96fl8B30fKrkNLvtAjSV49if6fi7q+bXo84THBBbvJtKfTAAL6
qqeQ4dCp6i31MOgzh/hFqb8rKz5Poq8Jge5+JxEMyWLW4lGfhq2ThM1o/Px3/ENbuBjpEyV++0Hv
xHlVL/b7Kb9Ouj2fQ1JmVLelRxyv6Tv5Aacz+IEQVIEEexThn14G3OPOK7i2/hN0jrB5DVoupIbT
0U4xIN4C+Ydji7p7SZrL/1gQ0SEkmL/xN/Ygzbd7PK6hbiRmOvquQbreAQMEx2xAjOzYOcpnqwNd
xKYYC/cttEXPs+hAOF65K2SCsqbU5jZEXC/hU2O3dc2B6BdU4u9GxHPz513icHVWWRYNoDdVosm0
PrRaKIdL/SPjRu4IfQpDzQX5pJ5QRkfyl6BncYrG+XNyjRsuxmYkFmXxJDPx5ro1rYu+4syWZOgs
Id25UINBr/V74k/7nUYM6sxFc2Va7UR5C8jzoebSazC/RvSnR3XB5yzPK7sr6QAiTZv/fLgANwKq
voM0zbqV6qw6OHHsUeM8cXvuUTXRxLrNQi4EVrjGYRMI0Oi4QpFXr3z6IoYa9TZnmnV3iGe5K4er
1E3l2L9p9r81sLJje0nLWTA1l1NWWhGkZB4xA89oOxrQlkS1S5SRLPK8zPq91mqeycn3r0XNJdFl
Cc+Dr+vC/oJEqhklSAYUJur3z4hT3U0sFWCnfM62qsXNkAAeHW4eU0ry/kilC2nk8Q8kIgilMdtj
XIRy2AWw/X6OrANBfgfIDPk9CBZr7++aLHOXDlQqrTGLnf7yv9CymBMySfmIWVNLmj/h6m4CMK7a
P5B+B1dbW+0kpNrz7s3PxOWrloNvUwZ3/zhbxqErYc7ACTRZFkwOBmNp39tWkGVkQqK5e2RKtpd4
YoLrZF/kQw53VwjCeVjcVn1HTRuCjzweFabGY0mjkASzyrjhfTfzgVyTpTEV7lxcJXGndRF3RnM7
0g6oqiczcItbX25V9Ks0Qkgeds/GHEHNDJTHjtxI+yk74NwMvUCp9KDkIyUNHPV4aWfRK1eYs63S
DuDPoJdSfNUC+PFwtWITKuJCdbGOC29hiFf2LHPuE3Cgyyl37xUwA4xKXxo5q1XoFkiPSE3VrfEp
sQHlmVXzdx5ib7XtNBr0wyleOdibIM2HjH3242Qz3RrRRJMzQX3wLsR/yOtq2w9a1YhKHT1PxwqD
7z314GYVqGyW51yADbWnL6jd8opyBftJyNBaAysV7XsFOuGCPjypeW4YotptyXQG+4k3594Jp9t2
S2OOINxb1Z0qYEgtE1YubXMq60wQ+ezIFHdLsORKMaGaCbfx1N5f/pz/ZJpM4IpbuV+36FrgCWKU
qvOWCNaXHvNaU1a6eZyq46UnQ1wBf+3m63nea6nuYtt1kz9hQ4QTuJ6Tp8zOoc8CVbEx1vi6mmD5
jm7NvSxVRwCPNy2purn06dGMpzBNcqXBcwpPDcsHpgnkgjiMdWOQ15zGcHqqzvfAH+U7kWakdFUL
iTaRArQzkUxChWDqoplZzxAuXekQshZ4IJJsCcH9buaYse4sHsH2ZEgHeu3nrXv621GyiZj3oz6B
H/Yde28V8eshAYZ00VYV+v+Uu9Wk2tc2NaixdXE34p7lVP7odshMY9EpbUj0KJj9eaVuaDynNXpR
zqUG9SurxNEKyrw4geoO+1JSUu5jpJ9k5KCtV9Bu1H/XnowMEGx55qIOvufJn3qKHoWYLBtNlBmS
aNPko9VNSdpV+eYZvgfwKoMV1Wg6oAgffywla85LpOmFTAKTdJ/bRtM/qIJboeGbI3bvEg4N7Sur
61RWpr3Shcp65d76nTGaycM0kiB5h7+Le21UUW2pxsINYYmF3xhAbPs8H0JU9kVWL5tK3UP9e/eo
js3qFpuH1fvW1CG02eP1+SMiWpAmXevi3mjvfdiMcMbCu0ajdvSJ2sg1Hln2a2lefFM7eADKFAoA
fL2KZECsCIXS5w/QZAZeU+r7hDuxLA/qI7A25FDZ44MwkjRCCh1/JuoJ7nWuWCObRRx4+AB9sV6C
mlqOdvaUoB4SI6AKDL+hKSsEbx89IQ8LbvhvdtYNAbqsDuT2H3BaV2dUXjEgxvb4IwEpAESl1INF
f0k2nWGuCsCwdWC5yGBa5xqYldsGn8qZ36iEO0RqIW74vizpP6eBSNHkxDOQdfnhtoWG1S0NS2tv
sniBciWY/P79PUt4WdTSdPII7/OexxqqWNts+XKZ40+nEvdyywxQduO2SkIbsXVzG/ZIVmUce7J1
BWiyU9fA5ZcOWGTFOFbqzLMcPmKY9Hz+UqZoFo/FFTBiX0l2f9D6Xbr5d6pIyEkDsyISz0b6yOUo
jeKf/YHV+2lGHbyFrUZ0+07ot/BuElLVQLKPFIEwEHrFVS8hvwqBbyQYBAQGW109u06k8yWkLT66
xArGa2zt7cKHFVvzF8+9zl8fTKxoh7zntC5r8w7/77uXpDn8JP4XDtAGOibG9Iz4pm6rm8rjvjXU
nJf3yfw8IEHAz5fy4jr5eBSpTu8dpheGfWRXI2gKqs4z15YX/GNAXD7VlRXFmqGayID5ZGW78R3O
oO4xDxFOdsP3BoluSdRJOtUjhUUKB9N2wosMo2heIFAhZEKc6kuxrAhiw9Sq48gzamlx7nUQ87+P
3lye1ikIO84CqZu0/ufd5+PG29iAuoVNYbpzTp4a1R8wbVEEN8v8yqs0pK94yUF6c8CmjBvgyfTV
PYxl/U+CleZBB9jBYxGgazn62ps1cJ3YAzgjC2/w8DZDklTzqr8S4XmknFoj7ZPWhmMxOdAxMFV4
jyIcgBH8pPM+bayt+643sU4eaZAaSFBLgEC/6pdJNSiKf3/Pctt9HOlL
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

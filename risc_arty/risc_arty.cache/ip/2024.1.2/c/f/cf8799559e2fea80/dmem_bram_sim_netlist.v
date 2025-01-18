// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Thu Jan 16 20:18:54 2025
// Host        : DESKTOP-OGK78OO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dmem_bram_sim_netlist.v
// Design      : dmem_bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dmem_bram,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24704)
`pragma protect data_block
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
PB8AOF/eITnepiVuTMdaqMqWk7Aba3o=
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

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 21:52:28 2021
// Host        : Mark-Wen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/310-w/Desktop/TempGit/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_gen_0_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_gen_0_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mASsWFm6VSMCD37ar1JCxbFVDm6sCT2bkhRO2866Krn9eO9NBZKc6QB9/SVGjfHwW4fqiYIdBKxh
8BGYU5IH04iM1Gb50Ds4M5GqxTX48/4Vp+L49YKA62XTZxS3B8MAH6rqovqOANVehYwQ+e/GKMAN
IwSieMlK5Ka+AFS5An/wcOVbIMd3OQ8L7fh9CcaPGx/U0DI+BIy92pIRnPeU5YOJ2uMMcoLWbLjh
BWINoMaiQ8MZcZRjodFOQP7l+Bg/hB5m0J9QHFofk8nY7LE7iOnE+vqK2e9WVN4BHbb23OxVQ+UP
qR2Vz413InI4Kq0GRojB5LG9Q6w78tAd8v7OgQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gzWQBrCJwZIfoBiMQzuuZx9im6aIWZwNrOTTHj1eLbZCuJKB0/46BK9L1jK+OxT9NqG9YFTn71Rh
xm+a+/TrZW4GAlLw6BUP0nV2uGvkz8dYxaTIlS7bmwNIXY5LP0v5a3BS1rDCmUbdBV60zC2prNiE
2yi7oCV2jMKliTSrZQpUY8+ecB8N8nWFWU3pg8eBoKEEAeMsxMXR5UGIPdStm4cf3hFOUEVYz33a
/VTDReg5UBhqZ3RnItsi6v0dW2i5Hv0PC3UXypavb+z4ShFAbgaEDg/kj9715bwIDwEHRzAMjQtS
gttgcuilUUazvrL6t8xB/6soR8MjLSfGhb6/jg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7584)
`pragma protect data_block
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
lY1b
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

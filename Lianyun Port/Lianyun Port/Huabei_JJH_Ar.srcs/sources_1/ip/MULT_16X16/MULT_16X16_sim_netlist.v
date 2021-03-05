// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 21:52:27 2021
// Host        : Mark-Wen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top MULT_16X16 -prefix
//               MULT_16X16_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module MULT_16X16
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
  MULT_16X16_mult_gen_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module MULT_16X16_mult_gen_v12_0_14
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
  MULT_16X16_mult_gen_v12_0_14_viv i_mult
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
CDZp9gHz6NYtBqIJR9ZTp2M4kWbzdUVRoZAa9M1Oc2yQTkOSUOzeab04Rx7dQujJw1JW07ABsA/M
wa0x/AF7CmElgiP2GVRL5jOHl+MgBIw1RTpJF8fPWykUt7g9C1tdl3w3lZL0H5uswd8yhUAx+m9w
QohOuwtNv3AM5Wq8ZQP3wp+M9XL6o6y6Pp6pRhfZ0l4zTpNuaGn7kdmjgE94s1Bv6KDTsiZmhUa6
5AAB4YugQowqrVPuwXc+XRmBZ6IGTc0pklPp/TE8Ch3d4dY809ejnKDE6sAvrUzZxMw2BQYZsuOJ
tTbneAwv4hM35xQuPE/d172DBkjsabmgRsqS8g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fyTBctt+qamif87IkzbLuqio8o3Oxg+UC/52VPGEdw/IRFzsaRGm34p+ZvCxmGoh9TEx5NY0ZDR8
T53GLHiMv+aMKH3uTXW3Grpoo81Sl775/bcuIXQRuKfFhVv38MLdlIL76vwWNhyPMYM/EiHghxV1
YD+JlZaxIQfWWSt1RWcs/zUyZDnjp4sbxYTDJNIsqOj1m7DgIIUr44ztesmlzyIMnHKjk4KNh5fs
ncP1/JLPIjqsBsDAnii1xmPQ8ZRv3yGKBJEPHFCvAv4PzGxFFMQFhRCETjZsswzvlss9R+/NTXaS
sK46yy0NaGKP4mETgnDk9wx9lDMcsMn6LSwSXg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7600)
`pragma protect data_block
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
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

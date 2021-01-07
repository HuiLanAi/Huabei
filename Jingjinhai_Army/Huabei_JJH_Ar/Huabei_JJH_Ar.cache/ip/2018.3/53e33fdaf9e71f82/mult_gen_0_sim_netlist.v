// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 21:52:27 2021
// Host        : Mark-Wen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_14_viv i_mult
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
VNQ7Ru09RVD5YV1DFP7JieN+EQ==
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

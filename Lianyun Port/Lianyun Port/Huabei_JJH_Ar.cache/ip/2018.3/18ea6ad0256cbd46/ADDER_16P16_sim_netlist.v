// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Feb 15 15:18:03 2021
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADDER_16P16_sim_netlist.v
// Design      : ADDER_16P16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADDER_16P16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U02btfOzvgIttKHvjknI8QZ/PKnx7aCrq6XDzjqHgKXtE1wyQQM18iUzoCaXDMh8Uw/deGMhPJka
r66MBzF6olpBwVvrzxInj+7GLz/jF3WiRUD97vRwF8yQgXaPlu+xdF5xGmdUj4xg2c69otr0Ije0
bxO8VX+V1rmP7UaUw0bR4EFRWLGdLndD2jFuOzpL6MR1SksCyLUsKdye9zQYsODEjyBpaOxEuR+F
2CRlvMXjCtwbO0TTSWN+4fxZvzJmwxSSjCiJqgWvfqnmZBqrxJpeB6jVrpY8eO+qli1ab8ZYqMXQ
cJgtGd4bnx4YlLJtmke4WTzw93DTgsg/KnDqcQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kxzUrpo3DFmSBpUEWLrNBuAJyxP4z4F2WJZP5jnpnNNOmDoSGDLmUWju0YRXJ+i0NeSVaKrT4pGK
oNJLZtWrf+zPzRMQmFPXodiHp7x3kDnuOwchXkA9Uh/SB2/t6iAGr0qrcvCJsVRclILPtFVLHaw3
d8v/sqi6or6yiBBYkJtaHXufgegEHyVOE26o62BG98cj5yjr6pkyDS/E8HFJyFfmiShtHp5TJkNL
iOAAWk1o+5ZleuopVf3F3THCdpc3M2sm5f/HKLM+qDJ780sRJBU1Wm+yoex2v04C/vaFtLJE0gVA
VscKfnKByVbc16ZnyPOVMua6ZCUnr04sUxGgNw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11152)
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

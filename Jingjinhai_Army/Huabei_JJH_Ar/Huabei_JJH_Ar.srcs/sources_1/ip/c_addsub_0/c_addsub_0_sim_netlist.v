// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 21:53:26 2021
// Host        : Mark-Wen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/310-w/Desktop/TempGit/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
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
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire ADD;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000" *) 
  (* C_B_WIDTH = "16" *) 
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
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "16" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
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
b6MVhKx6y/g+0juEV6L7Slk5GrKK2VizDBDISySeacIdqGWRuXwHbh0BUkml38/fksr11vxPdMqA
oFP3G/+6kbE+iIdWp0PegAKn/eDm3gm57HJholY3JXzLvFtWBM+jReRdwqyjs6gkEp0fvxjdU3PI
Waxz8xgLVCnfi1V31f88FbVsfgx7Yf+kvL0JQmuXknEiELpGJQUWZpnwnBiwIRCaNCha0gDmpYDV
woDuaKSAprthcyvXtpWbg3AGy+Pwh7hqvf5B56PVwz1I6u+ZETQQZcGFczWqrsXuJoiJB+BCLa5X
uP9Szw6SbT27mRpp2cpL0mII9FVBORO8mmCxCQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lKj6xo8BbZpPKacHELk3wXZii6FXbpKzrE1hFtUiiKxSHFfHDTByRFiIzOwKhVx2j+kUDYtkW5CR
8AEBT0qr4D3qtigF+xSxq0f5htPIiic33ykuWTvdB/kzthx45SetKQHVLtQHI7/fH/7iwkNeFeHY
iI2lBDjQbewnx2HKmELwIUtaMNfQlfSJ1O6sLgjFXCFf6o8wiTfUMbiYYLtWpMMVYI73QgNiAnov
hFoNfkUJiiaTm6sfciiK5l+5yG0P5hyPoTGbG8B+2tgvWn03YizWqfRc2qWEgsv8jeGn/L9mgOZ5
R7a456ncYP6aHY9go1aVSv4/48ZadUBNigj/sw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13200)
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

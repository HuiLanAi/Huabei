// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 21:53:26 2021
// Host        : Mark-Wen running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
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
lVLWbaE9uRu/wOhNBwTwnXie/cNtGxwER6H4miOgEKPLyTMf/DNyMUncIVAml1ShATDGCQf1F05r
UkgLFHRsgo4dm1+/NMLth5fLw6xRC6myVxJZcnOYxmLi0ZGFF86E+x73RCvfj7PKRlSDTyEZkHX9
BA89Qy5Aepw0GUbZ/zi12u2eSK4znn/R8EuXgjUgGrmQzjKtnWTl2Gi+d6MZR/VhNdQfi0a1lw4q
aNpNKvqIAUAKsiwCchA0fSKSa9OpBr/la2BBWRviYd5dBspzXlm9W7Pi4zikYQsGfkRgpXVkhIK9
g6Cz0OIgJPq9Rnbuc+TIVeHIIw/Eum2TGr7O4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lBwwNbhPC2wIgj98w+e31X25RRa0qAhVJ3w5G4/YbyJMIGQwy1uwm9ZkQa9MIcdvcH4omH52SEZl
Il+X4oZzQSljx963sPwlE0IijgzANQNVDjJYoCENhEPPyJ+v1GULU33i4sxfJ2AhGpoPX/dnb/KR
2DIp6LJt2R5/ESnLZ1VXa1wE3TdTPotsqOAoVdSpz7riUiGVhCnvOcMq5bP8bwjUSxPWUbiDtAeq
rqBkDNlH43AwJ0AMtGTxtUwRO8QO7rb5d3PU7kmgIetfRni0WGxH/KQ7W/5QTsnA9ox274XxUWZQ
vlSojLIfnh/+swcn4yBaOJEeBsAPiKtdnnir3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13248)
`pragma protect data_block
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
9G8NJLj5JzBX4oyt3HKAoft3JTMUiSFa
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

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Feb 15 15:04:30 2021
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
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
  (* C_LATENCY = "0" *) 
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
        .CE(1'b0),
        .CLK(1'b0),
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "0" *) 
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
  wire [15:0]B;
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
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "16" *) 
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
lgkajvV6m9ICdrbn3AdWVfNLCVItPJ8kKoDmcPAPrZTURoQ6YawNI5I6gM15rpudxwGqvyn2z8wC
ewvzffvDG/oFjk1OBzo6HtCC1OiwfHxdC9G+uSu+do97Y9gcpho9XbohFwpjMJNW2YERLEegprfw
touxk98rhsx5a8qqxMDQKHTB5Crtjb1f6gPKy7HkMdBu5m7AGbcBfPvm0LgAz9qdB8clneexXzB0
gj6AGuvz2dutiK+q+0or+IPl8RgfvcdZ79s3tozPeE/p2u1qeRN6jbiyWqKuZ4o8OHmDDh6Xnj8R
vnSgctvSyGb1dgIzNpV6QN4KmD5+L+MFtxUvWQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EKRRKFD9gBf7taf0PQ7q6mYcq3p4gGWmogI2ixwlFEYLfrJtOiGLP3ySOSYbVyekpwzje/1l4chr
1v7t79yFZUvzk0uPhskT7DfuwzeDOHW1hgW07DiLLsea7tslQ1wOarPok0bWFfL/8Sv9ma2nuPW+
3xMF5EpDDHEV9xdwx/vFEwWp8ilfBNcxadkuaSldVY1WVYx1psgANNCgTshTTM2DbGeTQcjEJZkf
NjwJBNebVlBzlStnuihokwdHeG74tGtMJoxuffxvrUXwsc/xywT2rfOLObw7D6ppgW4XqB/vMqAm
92LQ3iy3U8G1DKPv/K9v6AeqECkX+zAqtcO+ng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12016)
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

// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 16 15:32:35 2021
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
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
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
  (* C_LATENCY = "2" *) 
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
        .CE(CE),
        .CLK(CLK),
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
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
  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
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
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
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
FpUk2o1Fq5RQzz+4Boq4zdqkdXHVJsCF68yJAFL/+rWq589nN3pFKvEq7Z9HVZ6HUQc9SyZY/lOo
tNXMHwM4cYLSSBkj7Al2f2boihpp/cKhUgVZggAoQnlcF3epFyDbh9RcabsSGt5hPI7f9jnAEXsD
0QOOd7H2m6nexJeTyaSMol6mLmPejp+HqTL74notMhcquDDsQ+USiT6fkIhhQQOYXIcy783iICZO
8aRz1JWfUTEbw09r4PjmywVyva0GY//EWiE4jX4iMWp+p5F3xc1/n0rFwEv2NAeLbpgKYUxgXdoA
x6kTCfDx/HRzLflM+ZCF3D+Z2OMX+/JT+ZJ/vw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xPIeHV/OUIt589UCp6rDQIg3F7+L5SpA6bsOgcb/Ke0ohwbb6T3Xjoxv+8uqpWAmZ9m7itsVF3Ba
r+F3MiECpzXtCGcfj8F9MqEFUoO5YeBMAgL9e34fLR8WRUV5W7UhzI0KERE+4R2TYPlsIk+oKZi4
rhgxOfsd+BGwKXMiwbeWLDRSHm46iy3srfob94NoFVOvrQsuy+V+i+zZFMVLKIJDjbgPUQyOtzar
XDOA6W8lXrGDWrr/WQI6DmxoovgbH9nQW08TquXP8/5jX+fsgLybS90EtKLNAywfmmFxxKUn7q+Z
NBYwG/4rAylLULacBZ8ezhMyrpsGuNR9K/g07Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12304)
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

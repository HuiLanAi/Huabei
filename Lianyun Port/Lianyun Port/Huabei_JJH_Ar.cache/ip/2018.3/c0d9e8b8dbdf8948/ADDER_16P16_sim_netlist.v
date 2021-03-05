// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 23 15:40:32 2021
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
  (* C_LATENCY = "1" *) 
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
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
  (* C_LATENCY = "1" *) 
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
BlWtE/uMZmGFSCfNj98vVAiepuTFX5s+yZ/DtKdkWHKh14QzxtVH3rGHDsr/xGTR3y8DkCic3crJ
Gum9QWn3h48Zh13b7O5YmCs5nJVYt2tBOgM9Z2zDd+7tHEJR7dJHUCGMkjY0O2hMeKKvj07ccbqB
VIklCGeSUTZAqvvsX4k3z8tnXKFtUDlYoA6oYurWAht22YufNvO0gosGP7FSP64lk9Mqv62/h4su
O1Ym+Z4+jukrFQROKjSWyX2CjqSETUmYmxaFBN9knCM4cxcdvBXzupQxbFicrVgjbpDZbBoIJlsX
E3JGNlDzfV9JIqrtCjnCRY1V0ASTbAmOMgBHkw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HApE4iE9Wdxg7Yh88CTGBbDSEBVqdBuSicykXFDO5/Y+036gHaFzOfkN1DxPxvWhtnfDxgRoKRAX
A7PwkKwwXrjltYL8bFTzfsjVqRMY9L+dlnjyOzvtG3ksWD6ipwgvvkzXyYOXwlfXQEoGwk4CmcHc
HdU4yRm2zq+c9PP0iFccTEJu4kKtXnHD/cla97QkI01lvMT0dwCQy+TzVHXSh5Bhd0aO8XQRgSIn
eWL13g/e8jl5oqW0kiwSslhlkI+rEWQbre8tgxWkguURSu+qNDO4TPw+wMLM8EnWimNJwyMLxAE5
d4EmlSa/mOd3hgbncVgqm7KQVpr1f+SqQ4x7bQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12384)
`pragma protect data_block
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
DHE7V36D2z+Rut8Cr3Z1
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

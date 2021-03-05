// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 23 15:50:22 2021
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
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire SCLR;
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
  (* C_HAS_SCLR = "1" *) 
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
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
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
  wire SCLR;
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
  (* C_HAS_SCLR = "1" *) 
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
        .SCLR(SCLR),
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
R+mfbpDdlw309BhxHX+5j5ZYB86dHpDhxAry5dRSj+tEKwoX3+u7OGfdCol4RCmkkAoBTxlu0zWR
jIt2eNaOAAmR+IpXLENcmY7Y8qYOIqF/jcWvAIlNbdCciIvjHdzDWzSQ5w34yjwh4T5MKuVfYhXJ
aUohmH6oWcNauxwkDRok6PF2BSyMZl/XZDRFhR7EVPRhPRmvDhVX/9QihB+kC43jYLKdvEGDMSrU
uaQbRM6FQ0ii1k0J7QcKtNoLU993JgKDdPx8LqJEmIC5rgZHZ/jE5Fx0nHmcinR16gTmZt+DZWNg
xv2KHRC1C/Db+cvxgjdAI2k1tUYb1QDiDi5VBw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
16boZpcia1JgqymKYERhn3FnlqFJSZF5bj3purV/Djeww7UV59gBvQHdrj3R2scdIKn4P9JLfW2k
KQIQ2MM+1+MvTQIvYZ9qn+7Jry6/dBeddV49LYgqRmjcPuEKjsAIrhw2Mdon/uMhrGyAJzB6nfGl
aO0YpXCwLgeTcn8Ulka+XkMdTDVY6xCVWhGoUjgW7CoW2lt8hHWPHYQohAy8/jy+jlVxJNWwaDBa
Erq5TW5FX9oyaEGzrOG6owqY09uks9XhNTndRBJgZk9ncUFsxXIz5g0wNf4w8IXyacBLIrh8/ncS
y9KrDRELq1gq49FVHkLLx9Jw/Z6OASd9HSKjJg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12704)
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

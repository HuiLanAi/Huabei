// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 23 15:50:23 2021
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/ADDER_16P16/ADDER_16P16_sim_netlist.v
// Design      : ADDER_16P16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADDER_16P16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ADDER_16P16
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
  ADDER_16P16_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "kintexu" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module ADDER_16P16_c_addsub_v12_0_12
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
  ADDER_16P16_c_addsub_v12_0_12_viv xst_addsub
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
MfMNxp1CSSmyu5ejjK5LnvHZUdYVs/FjNO94D4I7cDTmf/voiLAGhQiDBq2HV5cRpFrVXZ2u5za0
pK7AOyVCsxT2jBOQsDFVYVsOlpU/nafe0/YTRaFMEHN3ifYS2JoXZk1aaF1b1LcxAkN1j81ml8a0
dRiWL1aYpZ74ePRKQqOtNtj9n9w+lLyGtlajdwdt4ZMOuBVvXynO4p8nQpBayJlt1c18bhmVWLcs
Pp69xGvSnYgNZDaOrjYLp5+nXiyDPM4Zv8wspUCq4vuwPgpnhmvdJPK2Ho2d+jr9R3f5jndSFLC9
MSfl1mhxwHkbX344Md/Gw0mfJmbcvSzAYZaO8A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IGmW6k4OZtaqqc+GXycZGmuTHy7eVbc14ddMjGNjGdCP5CPHUNw+70RtPXD3zZXOfaUSB2YyCh6w
AAEsQI0y3L4w+2AToBIxJiolbSGQWHRo7r4hKFNrWcTxHYYkoFK9o/IHBTR1ABhPg05UW+jyzkDm
d6FhyR/jovCdkb064D7vFJMlyGyEEul9QpHjhh3ipl9b6FyY2wqpAU1lnwYaQHVy4gNNKCDQbykd
1H8O2xfR4tCAGOR4fU7/D3oduWxeVHfXQbb7v4v9G2F1n/h0ZK5zBuLjC9cL2MQZ0VOxBCPbDGF7
W5EtnielOC2ZJNjMV4ynNWFK6mhJ+h2jDlFB7A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12672)
`pragma protect data_block
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
WmmUkAkxoliUd5S2p31wVk+s
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

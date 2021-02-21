// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 16 15:32:36 2021
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/ADDER_16P16/ADDER_16P16_sim_netlist.v
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
a52p8fhMPUzTS35fPXEqPECTeO3156EeNefYOb2Qw8YpTXyxU6FSMYwMMYed4tOFlQ/ZUfrOtImM
lENFjhmmr4ApMNjVcIRjJOM3MCVuSAZCMFH/s8HDWaY0LDuAI+BFqwLzhE44Zzt2tJQQ3xnsYKBW
oO2FS2eGGu1WIHP/X2+vnypALOa2QpnD03/zAra0NBycj8rfp4AcceBlStm/Hb8KIS8dna2sZWVZ
I332tXQ6t+2m+2SORKEYAPUb4H4ZxnAl4/5NVZfGEiDcBVkgGHoD4+qZRUiH8oZ/JuZmLhpx5eE+
0Sj7pnexVugJE4h6FVWDEhMQt1SXPZF2b+ikEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kp0kSWDTO09Pet+8VGE5FGmL9qn7d/W6Yaw88NWh5qvs95Z2hBqlBpKbRn6cCCz69StH9RhKJ2Oe
SPP6b6dmWarG/Ar+pBku+sZVyfp2lwtkhfzN2la08jvHHOlPoIUc8fglt6lF2j10V8DvaAkAmJts
iNfqy5Fw8LonnWM/whQ2XqYiqTOi4bjQnKx7eZ7l9Krj5C3Jh3hPgxB13wjxPPUOl4R7+vcC6jO1
hiHqbGtnPriIhzkvkes4xxLIZdUBPplfryXYVyR25EIiTSZY/yuYRZYqMQg8eyGnqMlOpOtmARJI
/q0G5G7keenakvVMgUFb3dPlk4I78TQepzyIMg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12272)
`pragma protect data_block
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
aY01DZuaFXFAuqsV4JV46WI=
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

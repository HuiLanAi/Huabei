// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Mar  7 10:13:57 2021
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/CONV1_WEI_64BX3X3/CONV1_WEI_64BX3X3_stub.v
// Design      : CONV1_WEI_64BX3X3
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module CONV1_WEI_64BX3X3(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[3:0],spo[511:0]" */;
  input [3:0]a;
  output [511:0]spo;
endmodule

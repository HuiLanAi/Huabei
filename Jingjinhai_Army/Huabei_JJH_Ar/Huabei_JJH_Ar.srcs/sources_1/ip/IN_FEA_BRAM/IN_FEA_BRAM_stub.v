// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar  4 10:25:17 2021
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top IN_FEA_BRAM -prefix
//               IN_FEA_BRAM_ IN_FEA_BRAM_stub.v
// Design      : IN_FEA_BRAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module IN_FEA_BRAM(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[8:0],dina[399:0],douta[399:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [8:0]addra;
  input [399:0]dina;
  output [399:0]douta;
endmodule

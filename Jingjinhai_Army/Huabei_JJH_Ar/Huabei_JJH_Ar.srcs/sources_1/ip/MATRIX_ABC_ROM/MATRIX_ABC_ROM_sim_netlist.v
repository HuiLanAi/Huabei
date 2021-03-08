// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Mar  8 15:23:46 2021
// Host        : DESKTOP-P4UPRAE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/MATRIX_ABC_ROM/MATRIX_ABC_ROM_sim_netlist.v
// Design      : MATRIX_ABC_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku115-flvd1517-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MATRIX_ABC_ROM,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module MATRIX_ABC_ROM
   (a,
    spo);
  input [6:0]a;
  output [399:0]spo;

  wire [6:0]a;
  wire [399:0]spo;
  wire [399:0]NLW_U0_dpo_UNCONNECTED;
  wire [399:0]NLW_U0_qdpo_UNCONNECTED;
  wire [399:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintexu" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "80" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "MATRIX_ABC_ROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "400" *) 
  MATRIX_ABC_ROM_dist_mem_gen_v8_0_12 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[399:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[399:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[399:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "7" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "80" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "kintexu" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "MATRIX_ABC_ROM.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "400" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_12" *) 
module MATRIX_ABC_ROM_dist_mem_gen_v8_0_12
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [6:0]a;
  input [399:0]d;
  input [6:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [399:0]spo;
  output [399:0]dpo;
  output [399:0]qspo;
  output [399:0]qdpo;

  wire \<const0> ;
  wire [6:0]a;
  wire [393:392]\^spo ;

  assign dpo[399] = \<const0> ;
  assign dpo[398] = \<const0> ;
  assign dpo[397] = \<const0> ;
  assign dpo[396] = \<const0> ;
  assign dpo[395] = \<const0> ;
  assign dpo[394] = \<const0> ;
  assign dpo[393] = \<const0> ;
  assign dpo[392] = \<const0> ;
  assign dpo[391] = \<const0> ;
  assign dpo[390] = \<const0> ;
  assign dpo[389] = \<const0> ;
  assign dpo[388] = \<const0> ;
  assign dpo[387] = \<const0> ;
  assign dpo[386] = \<const0> ;
  assign dpo[385] = \<const0> ;
  assign dpo[384] = \<const0> ;
  assign dpo[383] = \<const0> ;
  assign dpo[382] = \<const0> ;
  assign dpo[381] = \<const0> ;
  assign dpo[380] = \<const0> ;
  assign dpo[379] = \<const0> ;
  assign dpo[378] = \<const0> ;
  assign dpo[377] = \<const0> ;
  assign dpo[376] = \<const0> ;
  assign dpo[375] = \<const0> ;
  assign dpo[374] = \<const0> ;
  assign dpo[373] = \<const0> ;
  assign dpo[372] = \<const0> ;
  assign dpo[371] = \<const0> ;
  assign dpo[370] = \<const0> ;
  assign dpo[369] = \<const0> ;
  assign dpo[368] = \<const0> ;
  assign dpo[367] = \<const0> ;
  assign dpo[366] = \<const0> ;
  assign dpo[365] = \<const0> ;
  assign dpo[364] = \<const0> ;
  assign dpo[363] = \<const0> ;
  assign dpo[362] = \<const0> ;
  assign dpo[361] = \<const0> ;
  assign dpo[360] = \<const0> ;
  assign dpo[359] = \<const0> ;
  assign dpo[358] = \<const0> ;
  assign dpo[357] = \<const0> ;
  assign dpo[356] = \<const0> ;
  assign dpo[355] = \<const0> ;
  assign dpo[354] = \<const0> ;
  assign dpo[353] = \<const0> ;
  assign dpo[352] = \<const0> ;
  assign dpo[351] = \<const0> ;
  assign dpo[350] = \<const0> ;
  assign dpo[349] = \<const0> ;
  assign dpo[348] = \<const0> ;
  assign dpo[347] = \<const0> ;
  assign dpo[346] = \<const0> ;
  assign dpo[345] = \<const0> ;
  assign dpo[344] = \<const0> ;
  assign dpo[343] = \<const0> ;
  assign dpo[342] = \<const0> ;
  assign dpo[341] = \<const0> ;
  assign dpo[340] = \<const0> ;
  assign dpo[339] = \<const0> ;
  assign dpo[338] = \<const0> ;
  assign dpo[337] = \<const0> ;
  assign dpo[336] = \<const0> ;
  assign dpo[335] = \<const0> ;
  assign dpo[334] = \<const0> ;
  assign dpo[333] = \<const0> ;
  assign dpo[332] = \<const0> ;
  assign dpo[331] = \<const0> ;
  assign dpo[330] = \<const0> ;
  assign dpo[329] = \<const0> ;
  assign dpo[328] = \<const0> ;
  assign dpo[327] = \<const0> ;
  assign dpo[326] = \<const0> ;
  assign dpo[325] = \<const0> ;
  assign dpo[324] = \<const0> ;
  assign dpo[323] = \<const0> ;
  assign dpo[322] = \<const0> ;
  assign dpo[321] = \<const0> ;
  assign dpo[320] = \<const0> ;
  assign dpo[319] = \<const0> ;
  assign dpo[318] = \<const0> ;
  assign dpo[317] = \<const0> ;
  assign dpo[316] = \<const0> ;
  assign dpo[315] = \<const0> ;
  assign dpo[314] = \<const0> ;
  assign dpo[313] = \<const0> ;
  assign dpo[312] = \<const0> ;
  assign dpo[311] = \<const0> ;
  assign dpo[310] = \<const0> ;
  assign dpo[309] = \<const0> ;
  assign dpo[308] = \<const0> ;
  assign dpo[307] = \<const0> ;
  assign dpo[306] = \<const0> ;
  assign dpo[305] = \<const0> ;
  assign dpo[304] = \<const0> ;
  assign dpo[303] = \<const0> ;
  assign dpo[302] = \<const0> ;
  assign dpo[301] = \<const0> ;
  assign dpo[300] = \<const0> ;
  assign dpo[299] = \<const0> ;
  assign dpo[298] = \<const0> ;
  assign dpo[297] = \<const0> ;
  assign dpo[296] = \<const0> ;
  assign dpo[295] = \<const0> ;
  assign dpo[294] = \<const0> ;
  assign dpo[293] = \<const0> ;
  assign dpo[292] = \<const0> ;
  assign dpo[291] = \<const0> ;
  assign dpo[290] = \<const0> ;
  assign dpo[289] = \<const0> ;
  assign dpo[288] = \<const0> ;
  assign dpo[287] = \<const0> ;
  assign dpo[286] = \<const0> ;
  assign dpo[285] = \<const0> ;
  assign dpo[284] = \<const0> ;
  assign dpo[283] = \<const0> ;
  assign dpo[282] = \<const0> ;
  assign dpo[281] = \<const0> ;
  assign dpo[280] = \<const0> ;
  assign dpo[279] = \<const0> ;
  assign dpo[278] = \<const0> ;
  assign dpo[277] = \<const0> ;
  assign dpo[276] = \<const0> ;
  assign dpo[275] = \<const0> ;
  assign dpo[274] = \<const0> ;
  assign dpo[273] = \<const0> ;
  assign dpo[272] = \<const0> ;
  assign dpo[271] = \<const0> ;
  assign dpo[270] = \<const0> ;
  assign dpo[269] = \<const0> ;
  assign dpo[268] = \<const0> ;
  assign dpo[267] = \<const0> ;
  assign dpo[266] = \<const0> ;
  assign dpo[265] = \<const0> ;
  assign dpo[264] = \<const0> ;
  assign dpo[263] = \<const0> ;
  assign dpo[262] = \<const0> ;
  assign dpo[261] = \<const0> ;
  assign dpo[260] = \<const0> ;
  assign dpo[259] = \<const0> ;
  assign dpo[258] = \<const0> ;
  assign dpo[257] = \<const0> ;
  assign dpo[256] = \<const0> ;
  assign dpo[255] = \<const0> ;
  assign dpo[254] = \<const0> ;
  assign dpo[253] = \<const0> ;
  assign dpo[252] = \<const0> ;
  assign dpo[251] = \<const0> ;
  assign dpo[250] = \<const0> ;
  assign dpo[249] = \<const0> ;
  assign dpo[248] = \<const0> ;
  assign dpo[247] = \<const0> ;
  assign dpo[246] = \<const0> ;
  assign dpo[245] = \<const0> ;
  assign dpo[244] = \<const0> ;
  assign dpo[243] = \<const0> ;
  assign dpo[242] = \<const0> ;
  assign dpo[241] = \<const0> ;
  assign dpo[240] = \<const0> ;
  assign dpo[239] = \<const0> ;
  assign dpo[238] = \<const0> ;
  assign dpo[237] = \<const0> ;
  assign dpo[236] = \<const0> ;
  assign dpo[235] = \<const0> ;
  assign dpo[234] = \<const0> ;
  assign dpo[233] = \<const0> ;
  assign dpo[232] = \<const0> ;
  assign dpo[231] = \<const0> ;
  assign dpo[230] = \<const0> ;
  assign dpo[229] = \<const0> ;
  assign dpo[228] = \<const0> ;
  assign dpo[227] = \<const0> ;
  assign dpo[226] = \<const0> ;
  assign dpo[225] = \<const0> ;
  assign dpo[224] = \<const0> ;
  assign dpo[223] = \<const0> ;
  assign dpo[222] = \<const0> ;
  assign dpo[221] = \<const0> ;
  assign dpo[220] = \<const0> ;
  assign dpo[219] = \<const0> ;
  assign dpo[218] = \<const0> ;
  assign dpo[217] = \<const0> ;
  assign dpo[216] = \<const0> ;
  assign dpo[215] = \<const0> ;
  assign dpo[214] = \<const0> ;
  assign dpo[213] = \<const0> ;
  assign dpo[212] = \<const0> ;
  assign dpo[211] = \<const0> ;
  assign dpo[210] = \<const0> ;
  assign dpo[209] = \<const0> ;
  assign dpo[208] = \<const0> ;
  assign dpo[207] = \<const0> ;
  assign dpo[206] = \<const0> ;
  assign dpo[205] = \<const0> ;
  assign dpo[204] = \<const0> ;
  assign dpo[203] = \<const0> ;
  assign dpo[202] = \<const0> ;
  assign dpo[201] = \<const0> ;
  assign dpo[200] = \<const0> ;
  assign dpo[199] = \<const0> ;
  assign dpo[198] = \<const0> ;
  assign dpo[197] = \<const0> ;
  assign dpo[196] = \<const0> ;
  assign dpo[195] = \<const0> ;
  assign dpo[194] = \<const0> ;
  assign dpo[193] = \<const0> ;
  assign dpo[192] = \<const0> ;
  assign dpo[191] = \<const0> ;
  assign dpo[190] = \<const0> ;
  assign dpo[189] = \<const0> ;
  assign dpo[188] = \<const0> ;
  assign dpo[187] = \<const0> ;
  assign dpo[186] = \<const0> ;
  assign dpo[185] = \<const0> ;
  assign dpo[184] = \<const0> ;
  assign dpo[183] = \<const0> ;
  assign dpo[182] = \<const0> ;
  assign dpo[181] = \<const0> ;
  assign dpo[180] = \<const0> ;
  assign dpo[179] = \<const0> ;
  assign dpo[178] = \<const0> ;
  assign dpo[177] = \<const0> ;
  assign dpo[176] = \<const0> ;
  assign dpo[175] = \<const0> ;
  assign dpo[174] = \<const0> ;
  assign dpo[173] = \<const0> ;
  assign dpo[172] = \<const0> ;
  assign dpo[171] = \<const0> ;
  assign dpo[170] = \<const0> ;
  assign dpo[169] = \<const0> ;
  assign dpo[168] = \<const0> ;
  assign dpo[167] = \<const0> ;
  assign dpo[166] = \<const0> ;
  assign dpo[165] = \<const0> ;
  assign dpo[164] = \<const0> ;
  assign dpo[163] = \<const0> ;
  assign dpo[162] = \<const0> ;
  assign dpo[161] = \<const0> ;
  assign dpo[160] = \<const0> ;
  assign dpo[159] = \<const0> ;
  assign dpo[158] = \<const0> ;
  assign dpo[157] = \<const0> ;
  assign dpo[156] = \<const0> ;
  assign dpo[155] = \<const0> ;
  assign dpo[154] = \<const0> ;
  assign dpo[153] = \<const0> ;
  assign dpo[152] = \<const0> ;
  assign dpo[151] = \<const0> ;
  assign dpo[150] = \<const0> ;
  assign dpo[149] = \<const0> ;
  assign dpo[148] = \<const0> ;
  assign dpo[147] = \<const0> ;
  assign dpo[146] = \<const0> ;
  assign dpo[145] = \<const0> ;
  assign dpo[144] = \<const0> ;
  assign dpo[143] = \<const0> ;
  assign dpo[142] = \<const0> ;
  assign dpo[141] = \<const0> ;
  assign dpo[140] = \<const0> ;
  assign dpo[139] = \<const0> ;
  assign dpo[138] = \<const0> ;
  assign dpo[137] = \<const0> ;
  assign dpo[136] = \<const0> ;
  assign dpo[135] = \<const0> ;
  assign dpo[134] = \<const0> ;
  assign dpo[133] = \<const0> ;
  assign dpo[132] = \<const0> ;
  assign dpo[131] = \<const0> ;
  assign dpo[130] = \<const0> ;
  assign dpo[129] = \<const0> ;
  assign dpo[128] = \<const0> ;
  assign dpo[127] = \<const0> ;
  assign dpo[126] = \<const0> ;
  assign dpo[125] = \<const0> ;
  assign dpo[124] = \<const0> ;
  assign dpo[123] = \<const0> ;
  assign dpo[122] = \<const0> ;
  assign dpo[121] = \<const0> ;
  assign dpo[120] = \<const0> ;
  assign dpo[119] = \<const0> ;
  assign dpo[118] = \<const0> ;
  assign dpo[117] = \<const0> ;
  assign dpo[116] = \<const0> ;
  assign dpo[115] = \<const0> ;
  assign dpo[114] = \<const0> ;
  assign dpo[113] = \<const0> ;
  assign dpo[112] = \<const0> ;
  assign dpo[111] = \<const0> ;
  assign dpo[110] = \<const0> ;
  assign dpo[109] = \<const0> ;
  assign dpo[108] = \<const0> ;
  assign dpo[107] = \<const0> ;
  assign dpo[106] = \<const0> ;
  assign dpo[105] = \<const0> ;
  assign dpo[104] = \<const0> ;
  assign dpo[103] = \<const0> ;
  assign dpo[102] = \<const0> ;
  assign dpo[101] = \<const0> ;
  assign dpo[100] = \<const0> ;
  assign dpo[99] = \<const0> ;
  assign dpo[98] = \<const0> ;
  assign dpo[97] = \<const0> ;
  assign dpo[96] = \<const0> ;
  assign dpo[95] = \<const0> ;
  assign dpo[94] = \<const0> ;
  assign dpo[93] = \<const0> ;
  assign dpo[92] = \<const0> ;
  assign dpo[91] = \<const0> ;
  assign dpo[90] = \<const0> ;
  assign dpo[89] = \<const0> ;
  assign dpo[88] = \<const0> ;
  assign dpo[87] = \<const0> ;
  assign dpo[86] = \<const0> ;
  assign dpo[85] = \<const0> ;
  assign dpo[84] = \<const0> ;
  assign dpo[83] = \<const0> ;
  assign dpo[82] = \<const0> ;
  assign dpo[81] = \<const0> ;
  assign dpo[80] = \<const0> ;
  assign dpo[79] = \<const0> ;
  assign dpo[78] = \<const0> ;
  assign dpo[77] = \<const0> ;
  assign dpo[76] = \<const0> ;
  assign dpo[75] = \<const0> ;
  assign dpo[74] = \<const0> ;
  assign dpo[73] = \<const0> ;
  assign dpo[72] = \<const0> ;
  assign dpo[71] = \<const0> ;
  assign dpo[70] = \<const0> ;
  assign dpo[69] = \<const0> ;
  assign dpo[68] = \<const0> ;
  assign dpo[67] = \<const0> ;
  assign dpo[66] = \<const0> ;
  assign dpo[65] = \<const0> ;
  assign dpo[64] = \<const0> ;
  assign dpo[63] = \<const0> ;
  assign dpo[62] = \<const0> ;
  assign dpo[61] = \<const0> ;
  assign dpo[60] = \<const0> ;
  assign dpo[59] = \<const0> ;
  assign dpo[58] = \<const0> ;
  assign dpo[57] = \<const0> ;
  assign dpo[56] = \<const0> ;
  assign dpo[55] = \<const0> ;
  assign dpo[54] = \<const0> ;
  assign dpo[53] = \<const0> ;
  assign dpo[52] = \<const0> ;
  assign dpo[51] = \<const0> ;
  assign dpo[50] = \<const0> ;
  assign dpo[49] = \<const0> ;
  assign dpo[48] = \<const0> ;
  assign dpo[47] = \<const0> ;
  assign dpo[46] = \<const0> ;
  assign dpo[45] = \<const0> ;
  assign dpo[44] = \<const0> ;
  assign dpo[43] = \<const0> ;
  assign dpo[42] = \<const0> ;
  assign dpo[41] = \<const0> ;
  assign dpo[40] = \<const0> ;
  assign dpo[39] = \<const0> ;
  assign dpo[38] = \<const0> ;
  assign dpo[37] = \<const0> ;
  assign dpo[36] = \<const0> ;
  assign dpo[35] = \<const0> ;
  assign dpo[34] = \<const0> ;
  assign dpo[33] = \<const0> ;
  assign dpo[32] = \<const0> ;
  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[399] = \<const0> ;
  assign qdpo[398] = \<const0> ;
  assign qdpo[397] = \<const0> ;
  assign qdpo[396] = \<const0> ;
  assign qdpo[395] = \<const0> ;
  assign qdpo[394] = \<const0> ;
  assign qdpo[393] = \<const0> ;
  assign qdpo[392] = \<const0> ;
  assign qdpo[391] = \<const0> ;
  assign qdpo[390] = \<const0> ;
  assign qdpo[389] = \<const0> ;
  assign qdpo[388] = \<const0> ;
  assign qdpo[387] = \<const0> ;
  assign qdpo[386] = \<const0> ;
  assign qdpo[385] = \<const0> ;
  assign qdpo[384] = \<const0> ;
  assign qdpo[383] = \<const0> ;
  assign qdpo[382] = \<const0> ;
  assign qdpo[381] = \<const0> ;
  assign qdpo[380] = \<const0> ;
  assign qdpo[379] = \<const0> ;
  assign qdpo[378] = \<const0> ;
  assign qdpo[377] = \<const0> ;
  assign qdpo[376] = \<const0> ;
  assign qdpo[375] = \<const0> ;
  assign qdpo[374] = \<const0> ;
  assign qdpo[373] = \<const0> ;
  assign qdpo[372] = \<const0> ;
  assign qdpo[371] = \<const0> ;
  assign qdpo[370] = \<const0> ;
  assign qdpo[369] = \<const0> ;
  assign qdpo[368] = \<const0> ;
  assign qdpo[367] = \<const0> ;
  assign qdpo[366] = \<const0> ;
  assign qdpo[365] = \<const0> ;
  assign qdpo[364] = \<const0> ;
  assign qdpo[363] = \<const0> ;
  assign qdpo[362] = \<const0> ;
  assign qdpo[361] = \<const0> ;
  assign qdpo[360] = \<const0> ;
  assign qdpo[359] = \<const0> ;
  assign qdpo[358] = \<const0> ;
  assign qdpo[357] = \<const0> ;
  assign qdpo[356] = \<const0> ;
  assign qdpo[355] = \<const0> ;
  assign qdpo[354] = \<const0> ;
  assign qdpo[353] = \<const0> ;
  assign qdpo[352] = \<const0> ;
  assign qdpo[351] = \<const0> ;
  assign qdpo[350] = \<const0> ;
  assign qdpo[349] = \<const0> ;
  assign qdpo[348] = \<const0> ;
  assign qdpo[347] = \<const0> ;
  assign qdpo[346] = \<const0> ;
  assign qdpo[345] = \<const0> ;
  assign qdpo[344] = \<const0> ;
  assign qdpo[343] = \<const0> ;
  assign qdpo[342] = \<const0> ;
  assign qdpo[341] = \<const0> ;
  assign qdpo[340] = \<const0> ;
  assign qdpo[339] = \<const0> ;
  assign qdpo[338] = \<const0> ;
  assign qdpo[337] = \<const0> ;
  assign qdpo[336] = \<const0> ;
  assign qdpo[335] = \<const0> ;
  assign qdpo[334] = \<const0> ;
  assign qdpo[333] = \<const0> ;
  assign qdpo[332] = \<const0> ;
  assign qdpo[331] = \<const0> ;
  assign qdpo[330] = \<const0> ;
  assign qdpo[329] = \<const0> ;
  assign qdpo[328] = \<const0> ;
  assign qdpo[327] = \<const0> ;
  assign qdpo[326] = \<const0> ;
  assign qdpo[325] = \<const0> ;
  assign qdpo[324] = \<const0> ;
  assign qdpo[323] = \<const0> ;
  assign qdpo[322] = \<const0> ;
  assign qdpo[321] = \<const0> ;
  assign qdpo[320] = \<const0> ;
  assign qdpo[319] = \<const0> ;
  assign qdpo[318] = \<const0> ;
  assign qdpo[317] = \<const0> ;
  assign qdpo[316] = \<const0> ;
  assign qdpo[315] = \<const0> ;
  assign qdpo[314] = \<const0> ;
  assign qdpo[313] = \<const0> ;
  assign qdpo[312] = \<const0> ;
  assign qdpo[311] = \<const0> ;
  assign qdpo[310] = \<const0> ;
  assign qdpo[309] = \<const0> ;
  assign qdpo[308] = \<const0> ;
  assign qdpo[307] = \<const0> ;
  assign qdpo[306] = \<const0> ;
  assign qdpo[305] = \<const0> ;
  assign qdpo[304] = \<const0> ;
  assign qdpo[303] = \<const0> ;
  assign qdpo[302] = \<const0> ;
  assign qdpo[301] = \<const0> ;
  assign qdpo[300] = \<const0> ;
  assign qdpo[299] = \<const0> ;
  assign qdpo[298] = \<const0> ;
  assign qdpo[297] = \<const0> ;
  assign qdpo[296] = \<const0> ;
  assign qdpo[295] = \<const0> ;
  assign qdpo[294] = \<const0> ;
  assign qdpo[293] = \<const0> ;
  assign qdpo[292] = \<const0> ;
  assign qdpo[291] = \<const0> ;
  assign qdpo[290] = \<const0> ;
  assign qdpo[289] = \<const0> ;
  assign qdpo[288] = \<const0> ;
  assign qdpo[287] = \<const0> ;
  assign qdpo[286] = \<const0> ;
  assign qdpo[285] = \<const0> ;
  assign qdpo[284] = \<const0> ;
  assign qdpo[283] = \<const0> ;
  assign qdpo[282] = \<const0> ;
  assign qdpo[281] = \<const0> ;
  assign qdpo[280] = \<const0> ;
  assign qdpo[279] = \<const0> ;
  assign qdpo[278] = \<const0> ;
  assign qdpo[277] = \<const0> ;
  assign qdpo[276] = \<const0> ;
  assign qdpo[275] = \<const0> ;
  assign qdpo[274] = \<const0> ;
  assign qdpo[273] = \<const0> ;
  assign qdpo[272] = \<const0> ;
  assign qdpo[271] = \<const0> ;
  assign qdpo[270] = \<const0> ;
  assign qdpo[269] = \<const0> ;
  assign qdpo[268] = \<const0> ;
  assign qdpo[267] = \<const0> ;
  assign qdpo[266] = \<const0> ;
  assign qdpo[265] = \<const0> ;
  assign qdpo[264] = \<const0> ;
  assign qdpo[263] = \<const0> ;
  assign qdpo[262] = \<const0> ;
  assign qdpo[261] = \<const0> ;
  assign qdpo[260] = \<const0> ;
  assign qdpo[259] = \<const0> ;
  assign qdpo[258] = \<const0> ;
  assign qdpo[257] = \<const0> ;
  assign qdpo[256] = \<const0> ;
  assign qdpo[255] = \<const0> ;
  assign qdpo[254] = \<const0> ;
  assign qdpo[253] = \<const0> ;
  assign qdpo[252] = \<const0> ;
  assign qdpo[251] = \<const0> ;
  assign qdpo[250] = \<const0> ;
  assign qdpo[249] = \<const0> ;
  assign qdpo[248] = \<const0> ;
  assign qdpo[247] = \<const0> ;
  assign qdpo[246] = \<const0> ;
  assign qdpo[245] = \<const0> ;
  assign qdpo[244] = \<const0> ;
  assign qdpo[243] = \<const0> ;
  assign qdpo[242] = \<const0> ;
  assign qdpo[241] = \<const0> ;
  assign qdpo[240] = \<const0> ;
  assign qdpo[239] = \<const0> ;
  assign qdpo[238] = \<const0> ;
  assign qdpo[237] = \<const0> ;
  assign qdpo[236] = \<const0> ;
  assign qdpo[235] = \<const0> ;
  assign qdpo[234] = \<const0> ;
  assign qdpo[233] = \<const0> ;
  assign qdpo[232] = \<const0> ;
  assign qdpo[231] = \<const0> ;
  assign qdpo[230] = \<const0> ;
  assign qdpo[229] = \<const0> ;
  assign qdpo[228] = \<const0> ;
  assign qdpo[227] = \<const0> ;
  assign qdpo[226] = \<const0> ;
  assign qdpo[225] = \<const0> ;
  assign qdpo[224] = \<const0> ;
  assign qdpo[223] = \<const0> ;
  assign qdpo[222] = \<const0> ;
  assign qdpo[221] = \<const0> ;
  assign qdpo[220] = \<const0> ;
  assign qdpo[219] = \<const0> ;
  assign qdpo[218] = \<const0> ;
  assign qdpo[217] = \<const0> ;
  assign qdpo[216] = \<const0> ;
  assign qdpo[215] = \<const0> ;
  assign qdpo[214] = \<const0> ;
  assign qdpo[213] = \<const0> ;
  assign qdpo[212] = \<const0> ;
  assign qdpo[211] = \<const0> ;
  assign qdpo[210] = \<const0> ;
  assign qdpo[209] = \<const0> ;
  assign qdpo[208] = \<const0> ;
  assign qdpo[207] = \<const0> ;
  assign qdpo[206] = \<const0> ;
  assign qdpo[205] = \<const0> ;
  assign qdpo[204] = \<const0> ;
  assign qdpo[203] = \<const0> ;
  assign qdpo[202] = \<const0> ;
  assign qdpo[201] = \<const0> ;
  assign qdpo[200] = \<const0> ;
  assign qdpo[199] = \<const0> ;
  assign qdpo[198] = \<const0> ;
  assign qdpo[197] = \<const0> ;
  assign qdpo[196] = \<const0> ;
  assign qdpo[195] = \<const0> ;
  assign qdpo[194] = \<const0> ;
  assign qdpo[193] = \<const0> ;
  assign qdpo[192] = \<const0> ;
  assign qdpo[191] = \<const0> ;
  assign qdpo[190] = \<const0> ;
  assign qdpo[189] = \<const0> ;
  assign qdpo[188] = \<const0> ;
  assign qdpo[187] = \<const0> ;
  assign qdpo[186] = \<const0> ;
  assign qdpo[185] = \<const0> ;
  assign qdpo[184] = \<const0> ;
  assign qdpo[183] = \<const0> ;
  assign qdpo[182] = \<const0> ;
  assign qdpo[181] = \<const0> ;
  assign qdpo[180] = \<const0> ;
  assign qdpo[179] = \<const0> ;
  assign qdpo[178] = \<const0> ;
  assign qdpo[177] = \<const0> ;
  assign qdpo[176] = \<const0> ;
  assign qdpo[175] = \<const0> ;
  assign qdpo[174] = \<const0> ;
  assign qdpo[173] = \<const0> ;
  assign qdpo[172] = \<const0> ;
  assign qdpo[171] = \<const0> ;
  assign qdpo[170] = \<const0> ;
  assign qdpo[169] = \<const0> ;
  assign qdpo[168] = \<const0> ;
  assign qdpo[167] = \<const0> ;
  assign qdpo[166] = \<const0> ;
  assign qdpo[165] = \<const0> ;
  assign qdpo[164] = \<const0> ;
  assign qdpo[163] = \<const0> ;
  assign qdpo[162] = \<const0> ;
  assign qdpo[161] = \<const0> ;
  assign qdpo[160] = \<const0> ;
  assign qdpo[159] = \<const0> ;
  assign qdpo[158] = \<const0> ;
  assign qdpo[157] = \<const0> ;
  assign qdpo[156] = \<const0> ;
  assign qdpo[155] = \<const0> ;
  assign qdpo[154] = \<const0> ;
  assign qdpo[153] = \<const0> ;
  assign qdpo[152] = \<const0> ;
  assign qdpo[151] = \<const0> ;
  assign qdpo[150] = \<const0> ;
  assign qdpo[149] = \<const0> ;
  assign qdpo[148] = \<const0> ;
  assign qdpo[147] = \<const0> ;
  assign qdpo[146] = \<const0> ;
  assign qdpo[145] = \<const0> ;
  assign qdpo[144] = \<const0> ;
  assign qdpo[143] = \<const0> ;
  assign qdpo[142] = \<const0> ;
  assign qdpo[141] = \<const0> ;
  assign qdpo[140] = \<const0> ;
  assign qdpo[139] = \<const0> ;
  assign qdpo[138] = \<const0> ;
  assign qdpo[137] = \<const0> ;
  assign qdpo[136] = \<const0> ;
  assign qdpo[135] = \<const0> ;
  assign qdpo[134] = \<const0> ;
  assign qdpo[133] = \<const0> ;
  assign qdpo[132] = \<const0> ;
  assign qdpo[131] = \<const0> ;
  assign qdpo[130] = \<const0> ;
  assign qdpo[129] = \<const0> ;
  assign qdpo[128] = \<const0> ;
  assign qdpo[127] = \<const0> ;
  assign qdpo[126] = \<const0> ;
  assign qdpo[125] = \<const0> ;
  assign qdpo[124] = \<const0> ;
  assign qdpo[123] = \<const0> ;
  assign qdpo[122] = \<const0> ;
  assign qdpo[121] = \<const0> ;
  assign qdpo[120] = \<const0> ;
  assign qdpo[119] = \<const0> ;
  assign qdpo[118] = \<const0> ;
  assign qdpo[117] = \<const0> ;
  assign qdpo[116] = \<const0> ;
  assign qdpo[115] = \<const0> ;
  assign qdpo[114] = \<const0> ;
  assign qdpo[113] = \<const0> ;
  assign qdpo[112] = \<const0> ;
  assign qdpo[111] = \<const0> ;
  assign qdpo[110] = \<const0> ;
  assign qdpo[109] = \<const0> ;
  assign qdpo[108] = \<const0> ;
  assign qdpo[107] = \<const0> ;
  assign qdpo[106] = \<const0> ;
  assign qdpo[105] = \<const0> ;
  assign qdpo[104] = \<const0> ;
  assign qdpo[103] = \<const0> ;
  assign qdpo[102] = \<const0> ;
  assign qdpo[101] = \<const0> ;
  assign qdpo[100] = \<const0> ;
  assign qdpo[99] = \<const0> ;
  assign qdpo[98] = \<const0> ;
  assign qdpo[97] = \<const0> ;
  assign qdpo[96] = \<const0> ;
  assign qdpo[95] = \<const0> ;
  assign qdpo[94] = \<const0> ;
  assign qdpo[93] = \<const0> ;
  assign qdpo[92] = \<const0> ;
  assign qdpo[91] = \<const0> ;
  assign qdpo[90] = \<const0> ;
  assign qdpo[89] = \<const0> ;
  assign qdpo[88] = \<const0> ;
  assign qdpo[87] = \<const0> ;
  assign qdpo[86] = \<const0> ;
  assign qdpo[85] = \<const0> ;
  assign qdpo[84] = \<const0> ;
  assign qdpo[83] = \<const0> ;
  assign qdpo[82] = \<const0> ;
  assign qdpo[81] = \<const0> ;
  assign qdpo[80] = \<const0> ;
  assign qdpo[79] = \<const0> ;
  assign qdpo[78] = \<const0> ;
  assign qdpo[77] = \<const0> ;
  assign qdpo[76] = \<const0> ;
  assign qdpo[75] = \<const0> ;
  assign qdpo[74] = \<const0> ;
  assign qdpo[73] = \<const0> ;
  assign qdpo[72] = \<const0> ;
  assign qdpo[71] = \<const0> ;
  assign qdpo[70] = \<const0> ;
  assign qdpo[69] = \<const0> ;
  assign qdpo[68] = \<const0> ;
  assign qdpo[67] = \<const0> ;
  assign qdpo[66] = \<const0> ;
  assign qdpo[65] = \<const0> ;
  assign qdpo[64] = \<const0> ;
  assign qdpo[63] = \<const0> ;
  assign qdpo[62] = \<const0> ;
  assign qdpo[61] = \<const0> ;
  assign qdpo[60] = \<const0> ;
  assign qdpo[59] = \<const0> ;
  assign qdpo[58] = \<const0> ;
  assign qdpo[57] = \<const0> ;
  assign qdpo[56] = \<const0> ;
  assign qdpo[55] = \<const0> ;
  assign qdpo[54] = \<const0> ;
  assign qdpo[53] = \<const0> ;
  assign qdpo[52] = \<const0> ;
  assign qdpo[51] = \<const0> ;
  assign qdpo[50] = \<const0> ;
  assign qdpo[49] = \<const0> ;
  assign qdpo[48] = \<const0> ;
  assign qdpo[47] = \<const0> ;
  assign qdpo[46] = \<const0> ;
  assign qdpo[45] = \<const0> ;
  assign qdpo[44] = \<const0> ;
  assign qdpo[43] = \<const0> ;
  assign qdpo[42] = \<const0> ;
  assign qdpo[41] = \<const0> ;
  assign qdpo[40] = \<const0> ;
  assign qdpo[39] = \<const0> ;
  assign qdpo[38] = \<const0> ;
  assign qdpo[37] = \<const0> ;
  assign qdpo[36] = \<const0> ;
  assign qdpo[35] = \<const0> ;
  assign qdpo[34] = \<const0> ;
  assign qdpo[33] = \<const0> ;
  assign qdpo[32] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[399] = \<const0> ;
  assign qspo[398] = \<const0> ;
  assign qspo[397] = \<const0> ;
  assign qspo[396] = \<const0> ;
  assign qspo[395] = \<const0> ;
  assign qspo[394] = \<const0> ;
  assign qspo[393] = \<const0> ;
  assign qspo[392] = \<const0> ;
  assign qspo[391] = \<const0> ;
  assign qspo[390] = \<const0> ;
  assign qspo[389] = \<const0> ;
  assign qspo[388] = \<const0> ;
  assign qspo[387] = \<const0> ;
  assign qspo[386] = \<const0> ;
  assign qspo[385] = \<const0> ;
  assign qspo[384] = \<const0> ;
  assign qspo[383] = \<const0> ;
  assign qspo[382] = \<const0> ;
  assign qspo[381] = \<const0> ;
  assign qspo[380] = \<const0> ;
  assign qspo[379] = \<const0> ;
  assign qspo[378] = \<const0> ;
  assign qspo[377] = \<const0> ;
  assign qspo[376] = \<const0> ;
  assign qspo[375] = \<const0> ;
  assign qspo[374] = \<const0> ;
  assign qspo[373] = \<const0> ;
  assign qspo[372] = \<const0> ;
  assign qspo[371] = \<const0> ;
  assign qspo[370] = \<const0> ;
  assign qspo[369] = \<const0> ;
  assign qspo[368] = \<const0> ;
  assign qspo[367] = \<const0> ;
  assign qspo[366] = \<const0> ;
  assign qspo[365] = \<const0> ;
  assign qspo[364] = \<const0> ;
  assign qspo[363] = \<const0> ;
  assign qspo[362] = \<const0> ;
  assign qspo[361] = \<const0> ;
  assign qspo[360] = \<const0> ;
  assign qspo[359] = \<const0> ;
  assign qspo[358] = \<const0> ;
  assign qspo[357] = \<const0> ;
  assign qspo[356] = \<const0> ;
  assign qspo[355] = \<const0> ;
  assign qspo[354] = \<const0> ;
  assign qspo[353] = \<const0> ;
  assign qspo[352] = \<const0> ;
  assign qspo[351] = \<const0> ;
  assign qspo[350] = \<const0> ;
  assign qspo[349] = \<const0> ;
  assign qspo[348] = \<const0> ;
  assign qspo[347] = \<const0> ;
  assign qspo[346] = \<const0> ;
  assign qspo[345] = \<const0> ;
  assign qspo[344] = \<const0> ;
  assign qspo[343] = \<const0> ;
  assign qspo[342] = \<const0> ;
  assign qspo[341] = \<const0> ;
  assign qspo[340] = \<const0> ;
  assign qspo[339] = \<const0> ;
  assign qspo[338] = \<const0> ;
  assign qspo[337] = \<const0> ;
  assign qspo[336] = \<const0> ;
  assign qspo[335] = \<const0> ;
  assign qspo[334] = \<const0> ;
  assign qspo[333] = \<const0> ;
  assign qspo[332] = \<const0> ;
  assign qspo[331] = \<const0> ;
  assign qspo[330] = \<const0> ;
  assign qspo[329] = \<const0> ;
  assign qspo[328] = \<const0> ;
  assign qspo[327] = \<const0> ;
  assign qspo[326] = \<const0> ;
  assign qspo[325] = \<const0> ;
  assign qspo[324] = \<const0> ;
  assign qspo[323] = \<const0> ;
  assign qspo[322] = \<const0> ;
  assign qspo[321] = \<const0> ;
  assign qspo[320] = \<const0> ;
  assign qspo[319] = \<const0> ;
  assign qspo[318] = \<const0> ;
  assign qspo[317] = \<const0> ;
  assign qspo[316] = \<const0> ;
  assign qspo[315] = \<const0> ;
  assign qspo[314] = \<const0> ;
  assign qspo[313] = \<const0> ;
  assign qspo[312] = \<const0> ;
  assign qspo[311] = \<const0> ;
  assign qspo[310] = \<const0> ;
  assign qspo[309] = \<const0> ;
  assign qspo[308] = \<const0> ;
  assign qspo[307] = \<const0> ;
  assign qspo[306] = \<const0> ;
  assign qspo[305] = \<const0> ;
  assign qspo[304] = \<const0> ;
  assign qspo[303] = \<const0> ;
  assign qspo[302] = \<const0> ;
  assign qspo[301] = \<const0> ;
  assign qspo[300] = \<const0> ;
  assign qspo[299] = \<const0> ;
  assign qspo[298] = \<const0> ;
  assign qspo[297] = \<const0> ;
  assign qspo[296] = \<const0> ;
  assign qspo[295] = \<const0> ;
  assign qspo[294] = \<const0> ;
  assign qspo[293] = \<const0> ;
  assign qspo[292] = \<const0> ;
  assign qspo[291] = \<const0> ;
  assign qspo[290] = \<const0> ;
  assign qspo[289] = \<const0> ;
  assign qspo[288] = \<const0> ;
  assign qspo[287] = \<const0> ;
  assign qspo[286] = \<const0> ;
  assign qspo[285] = \<const0> ;
  assign qspo[284] = \<const0> ;
  assign qspo[283] = \<const0> ;
  assign qspo[282] = \<const0> ;
  assign qspo[281] = \<const0> ;
  assign qspo[280] = \<const0> ;
  assign qspo[279] = \<const0> ;
  assign qspo[278] = \<const0> ;
  assign qspo[277] = \<const0> ;
  assign qspo[276] = \<const0> ;
  assign qspo[275] = \<const0> ;
  assign qspo[274] = \<const0> ;
  assign qspo[273] = \<const0> ;
  assign qspo[272] = \<const0> ;
  assign qspo[271] = \<const0> ;
  assign qspo[270] = \<const0> ;
  assign qspo[269] = \<const0> ;
  assign qspo[268] = \<const0> ;
  assign qspo[267] = \<const0> ;
  assign qspo[266] = \<const0> ;
  assign qspo[265] = \<const0> ;
  assign qspo[264] = \<const0> ;
  assign qspo[263] = \<const0> ;
  assign qspo[262] = \<const0> ;
  assign qspo[261] = \<const0> ;
  assign qspo[260] = \<const0> ;
  assign qspo[259] = \<const0> ;
  assign qspo[258] = \<const0> ;
  assign qspo[257] = \<const0> ;
  assign qspo[256] = \<const0> ;
  assign qspo[255] = \<const0> ;
  assign qspo[254] = \<const0> ;
  assign qspo[253] = \<const0> ;
  assign qspo[252] = \<const0> ;
  assign qspo[251] = \<const0> ;
  assign qspo[250] = \<const0> ;
  assign qspo[249] = \<const0> ;
  assign qspo[248] = \<const0> ;
  assign qspo[247] = \<const0> ;
  assign qspo[246] = \<const0> ;
  assign qspo[245] = \<const0> ;
  assign qspo[244] = \<const0> ;
  assign qspo[243] = \<const0> ;
  assign qspo[242] = \<const0> ;
  assign qspo[241] = \<const0> ;
  assign qspo[240] = \<const0> ;
  assign qspo[239] = \<const0> ;
  assign qspo[238] = \<const0> ;
  assign qspo[237] = \<const0> ;
  assign qspo[236] = \<const0> ;
  assign qspo[235] = \<const0> ;
  assign qspo[234] = \<const0> ;
  assign qspo[233] = \<const0> ;
  assign qspo[232] = \<const0> ;
  assign qspo[231] = \<const0> ;
  assign qspo[230] = \<const0> ;
  assign qspo[229] = \<const0> ;
  assign qspo[228] = \<const0> ;
  assign qspo[227] = \<const0> ;
  assign qspo[226] = \<const0> ;
  assign qspo[225] = \<const0> ;
  assign qspo[224] = \<const0> ;
  assign qspo[223] = \<const0> ;
  assign qspo[222] = \<const0> ;
  assign qspo[221] = \<const0> ;
  assign qspo[220] = \<const0> ;
  assign qspo[219] = \<const0> ;
  assign qspo[218] = \<const0> ;
  assign qspo[217] = \<const0> ;
  assign qspo[216] = \<const0> ;
  assign qspo[215] = \<const0> ;
  assign qspo[214] = \<const0> ;
  assign qspo[213] = \<const0> ;
  assign qspo[212] = \<const0> ;
  assign qspo[211] = \<const0> ;
  assign qspo[210] = \<const0> ;
  assign qspo[209] = \<const0> ;
  assign qspo[208] = \<const0> ;
  assign qspo[207] = \<const0> ;
  assign qspo[206] = \<const0> ;
  assign qspo[205] = \<const0> ;
  assign qspo[204] = \<const0> ;
  assign qspo[203] = \<const0> ;
  assign qspo[202] = \<const0> ;
  assign qspo[201] = \<const0> ;
  assign qspo[200] = \<const0> ;
  assign qspo[199] = \<const0> ;
  assign qspo[198] = \<const0> ;
  assign qspo[197] = \<const0> ;
  assign qspo[196] = \<const0> ;
  assign qspo[195] = \<const0> ;
  assign qspo[194] = \<const0> ;
  assign qspo[193] = \<const0> ;
  assign qspo[192] = \<const0> ;
  assign qspo[191] = \<const0> ;
  assign qspo[190] = \<const0> ;
  assign qspo[189] = \<const0> ;
  assign qspo[188] = \<const0> ;
  assign qspo[187] = \<const0> ;
  assign qspo[186] = \<const0> ;
  assign qspo[185] = \<const0> ;
  assign qspo[184] = \<const0> ;
  assign qspo[183] = \<const0> ;
  assign qspo[182] = \<const0> ;
  assign qspo[181] = \<const0> ;
  assign qspo[180] = \<const0> ;
  assign qspo[179] = \<const0> ;
  assign qspo[178] = \<const0> ;
  assign qspo[177] = \<const0> ;
  assign qspo[176] = \<const0> ;
  assign qspo[175] = \<const0> ;
  assign qspo[174] = \<const0> ;
  assign qspo[173] = \<const0> ;
  assign qspo[172] = \<const0> ;
  assign qspo[171] = \<const0> ;
  assign qspo[170] = \<const0> ;
  assign qspo[169] = \<const0> ;
  assign qspo[168] = \<const0> ;
  assign qspo[167] = \<const0> ;
  assign qspo[166] = \<const0> ;
  assign qspo[165] = \<const0> ;
  assign qspo[164] = \<const0> ;
  assign qspo[163] = \<const0> ;
  assign qspo[162] = \<const0> ;
  assign qspo[161] = \<const0> ;
  assign qspo[160] = \<const0> ;
  assign qspo[159] = \<const0> ;
  assign qspo[158] = \<const0> ;
  assign qspo[157] = \<const0> ;
  assign qspo[156] = \<const0> ;
  assign qspo[155] = \<const0> ;
  assign qspo[154] = \<const0> ;
  assign qspo[153] = \<const0> ;
  assign qspo[152] = \<const0> ;
  assign qspo[151] = \<const0> ;
  assign qspo[150] = \<const0> ;
  assign qspo[149] = \<const0> ;
  assign qspo[148] = \<const0> ;
  assign qspo[147] = \<const0> ;
  assign qspo[146] = \<const0> ;
  assign qspo[145] = \<const0> ;
  assign qspo[144] = \<const0> ;
  assign qspo[143] = \<const0> ;
  assign qspo[142] = \<const0> ;
  assign qspo[141] = \<const0> ;
  assign qspo[140] = \<const0> ;
  assign qspo[139] = \<const0> ;
  assign qspo[138] = \<const0> ;
  assign qspo[137] = \<const0> ;
  assign qspo[136] = \<const0> ;
  assign qspo[135] = \<const0> ;
  assign qspo[134] = \<const0> ;
  assign qspo[133] = \<const0> ;
  assign qspo[132] = \<const0> ;
  assign qspo[131] = \<const0> ;
  assign qspo[130] = \<const0> ;
  assign qspo[129] = \<const0> ;
  assign qspo[128] = \<const0> ;
  assign qspo[127] = \<const0> ;
  assign qspo[126] = \<const0> ;
  assign qspo[125] = \<const0> ;
  assign qspo[124] = \<const0> ;
  assign qspo[123] = \<const0> ;
  assign qspo[122] = \<const0> ;
  assign qspo[121] = \<const0> ;
  assign qspo[120] = \<const0> ;
  assign qspo[119] = \<const0> ;
  assign qspo[118] = \<const0> ;
  assign qspo[117] = \<const0> ;
  assign qspo[116] = \<const0> ;
  assign qspo[115] = \<const0> ;
  assign qspo[114] = \<const0> ;
  assign qspo[113] = \<const0> ;
  assign qspo[112] = \<const0> ;
  assign qspo[111] = \<const0> ;
  assign qspo[110] = \<const0> ;
  assign qspo[109] = \<const0> ;
  assign qspo[108] = \<const0> ;
  assign qspo[107] = \<const0> ;
  assign qspo[106] = \<const0> ;
  assign qspo[105] = \<const0> ;
  assign qspo[104] = \<const0> ;
  assign qspo[103] = \<const0> ;
  assign qspo[102] = \<const0> ;
  assign qspo[101] = \<const0> ;
  assign qspo[100] = \<const0> ;
  assign qspo[99] = \<const0> ;
  assign qspo[98] = \<const0> ;
  assign qspo[97] = \<const0> ;
  assign qspo[96] = \<const0> ;
  assign qspo[95] = \<const0> ;
  assign qspo[94] = \<const0> ;
  assign qspo[93] = \<const0> ;
  assign qspo[92] = \<const0> ;
  assign qspo[91] = \<const0> ;
  assign qspo[90] = \<const0> ;
  assign qspo[89] = \<const0> ;
  assign qspo[88] = \<const0> ;
  assign qspo[87] = \<const0> ;
  assign qspo[86] = \<const0> ;
  assign qspo[85] = \<const0> ;
  assign qspo[84] = \<const0> ;
  assign qspo[83] = \<const0> ;
  assign qspo[82] = \<const0> ;
  assign qspo[81] = \<const0> ;
  assign qspo[80] = \<const0> ;
  assign qspo[79] = \<const0> ;
  assign qspo[78] = \<const0> ;
  assign qspo[77] = \<const0> ;
  assign qspo[76] = \<const0> ;
  assign qspo[75] = \<const0> ;
  assign qspo[74] = \<const0> ;
  assign qspo[73] = \<const0> ;
  assign qspo[72] = \<const0> ;
  assign qspo[71] = \<const0> ;
  assign qspo[70] = \<const0> ;
  assign qspo[69] = \<const0> ;
  assign qspo[68] = \<const0> ;
  assign qspo[67] = \<const0> ;
  assign qspo[66] = \<const0> ;
  assign qspo[65] = \<const0> ;
  assign qspo[64] = \<const0> ;
  assign qspo[63] = \<const0> ;
  assign qspo[62] = \<const0> ;
  assign qspo[61] = \<const0> ;
  assign qspo[60] = \<const0> ;
  assign qspo[59] = \<const0> ;
  assign qspo[58] = \<const0> ;
  assign qspo[57] = \<const0> ;
  assign qspo[56] = \<const0> ;
  assign qspo[55] = \<const0> ;
  assign qspo[54] = \<const0> ;
  assign qspo[53] = \<const0> ;
  assign qspo[52] = \<const0> ;
  assign qspo[51] = \<const0> ;
  assign qspo[50] = \<const0> ;
  assign qspo[49] = \<const0> ;
  assign qspo[48] = \<const0> ;
  assign qspo[47] = \<const0> ;
  assign qspo[46] = \<const0> ;
  assign qspo[45] = \<const0> ;
  assign qspo[44] = \<const0> ;
  assign qspo[43] = \<const0> ;
  assign qspo[42] = \<const0> ;
  assign qspo[41] = \<const0> ;
  assign qspo[40] = \<const0> ;
  assign qspo[39] = \<const0> ;
  assign qspo[38] = \<const0> ;
  assign qspo[37] = \<const0> ;
  assign qspo[36] = \<const0> ;
  assign qspo[35] = \<const0> ;
  assign qspo[34] = \<const0> ;
  assign qspo[33] = \<const0> ;
  assign qspo[32] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[399] = \<const0> ;
  assign spo[398] = \<const0> ;
  assign spo[397] = \<const0> ;
  assign spo[396] = \<const0> ;
  assign spo[395] = \<const0> ;
  assign spo[394] = \<const0> ;
  assign spo[393:392] = \^spo [393:392];
  assign spo[391] = \<const0> ;
  assign spo[390] = \<const0> ;
  assign spo[389] = \<const0> ;
  assign spo[388] = \<const0> ;
  assign spo[387] = \<const0> ;
  assign spo[386] = \<const0> ;
  assign spo[385] = \<const0> ;
  assign spo[384] = \<const0> ;
  assign spo[383] = \<const0> ;
  assign spo[382] = \<const0> ;
  assign spo[381] = \<const0> ;
  assign spo[380] = \<const0> ;
  assign spo[379] = \<const0> ;
  assign spo[378] = \<const0> ;
  assign spo[377:376] = \^spo [393:392];
  assign spo[375] = \<const0> ;
  assign spo[374] = \<const0> ;
  assign spo[373] = \<const0> ;
  assign spo[372] = \<const0> ;
  assign spo[371] = \<const0> ;
  assign spo[370] = \<const0> ;
  assign spo[369] = \<const0> ;
  assign spo[368] = \<const0> ;
  assign spo[367] = \<const0> ;
  assign spo[366] = \<const0> ;
  assign spo[365] = \<const0> ;
  assign spo[364] = \<const0> ;
  assign spo[363] = \<const0> ;
  assign spo[362] = \<const0> ;
  assign spo[361:360] = \^spo [393:392];
  assign spo[359] = \<const0> ;
  assign spo[358] = \<const0> ;
  assign spo[357] = \<const0> ;
  assign spo[356] = \<const0> ;
  assign spo[355] = \<const0> ;
  assign spo[354] = \<const0> ;
  assign spo[353] = \<const0> ;
  assign spo[352] = \<const0> ;
  assign spo[351] = \<const0> ;
  assign spo[350] = \<const0> ;
  assign spo[349] = \<const0> ;
  assign spo[348] = \<const0> ;
  assign spo[347] = \<const0> ;
  assign spo[346] = \<const0> ;
  assign spo[345:344] = \^spo [393:392];
  assign spo[343] = \<const0> ;
  assign spo[342] = \<const0> ;
  assign spo[341] = \<const0> ;
  assign spo[340] = \<const0> ;
  assign spo[339] = \<const0> ;
  assign spo[338] = \<const0> ;
  assign spo[337] = \<const0> ;
  assign spo[336] = \<const0> ;
  assign spo[335] = \<const0> ;
  assign spo[334] = \<const0> ;
  assign spo[333] = \<const0> ;
  assign spo[332] = \<const0> ;
  assign spo[331] = \<const0> ;
  assign spo[330] = \<const0> ;
  assign spo[329:328] = \^spo [393:392];
  assign spo[327] = \<const0> ;
  assign spo[326] = \<const0> ;
  assign spo[325] = \<const0> ;
  assign spo[324] = \<const0> ;
  assign spo[323] = \<const0> ;
  assign spo[322] = \<const0> ;
  assign spo[321] = \<const0> ;
  assign spo[320] = \<const0> ;
  assign spo[319] = \<const0> ;
  assign spo[318] = \<const0> ;
  assign spo[317] = \<const0> ;
  assign spo[316] = \<const0> ;
  assign spo[315] = \<const0> ;
  assign spo[314] = \<const0> ;
  assign spo[313:312] = \^spo [393:392];
  assign spo[311] = \<const0> ;
  assign spo[310] = \<const0> ;
  assign spo[309] = \<const0> ;
  assign spo[308] = \<const0> ;
  assign spo[307] = \<const0> ;
  assign spo[306] = \<const0> ;
  assign spo[305] = \<const0> ;
  assign spo[304] = \<const0> ;
  assign spo[303] = \<const0> ;
  assign spo[302] = \<const0> ;
  assign spo[301] = \<const0> ;
  assign spo[300] = \<const0> ;
  assign spo[299] = \<const0> ;
  assign spo[298] = \<const0> ;
  assign spo[297:296] = \^spo [393:392];
  assign spo[295] = \<const0> ;
  assign spo[294] = \<const0> ;
  assign spo[293] = \<const0> ;
  assign spo[292] = \<const0> ;
  assign spo[291] = \<const0> ;
  assign spo[290] = \<const0> ;
  assign spo[289] = \<const0> ;
  assign spo[288] = \<const0> ;
  assign spo[287] = \<const0> ;
  assign spo[286] = \<const0> ;
  assign spo[285] = \<const0> ;
  assign spo[284] = \<const0> ;
  assign spo[283] = \<const0> ;
  assign spo[282] = \<const0> ;
  assign spo[281:280] = \^spo [393:392];
  assign spo[279] = \<const0> ;
  assign spo[278] = \<const0> ;
  assign spo[277] = \<const0> ;
  assign spo[276] = \<const0> ;
  assign spo[275] = \<const0> ;
  assign spo[274] = \<const0> ;
  assign spo[273] = \<const0> ;
  assign spo[272] = \<const0> ;
  assign spo[271] = \<const0> ;
  assign spo[270] = \<const0> ;
  assign spo[269] = \<const0> ;
  assign spo[268] = \<const0> ;
  assign spo[267] = \<const0> ;
  assign spo[266] = \<const0> ;
  assign spo[265:264] = \^spo [393:392];
  assign spo[263] = \<const0> ;
  assign spo[262] = \<const0> ;
  assign spo[261] = \<const0> ;
  assign spo[260] = \<const0> ;
  assign spo[259] = \<const0> ;
  assign spo[258] = \<const0> ;
  assign spo[257] = \<const0> ;
  assign spo[256] = \<const0> ;
  assign spo[255] = \<const0> ;
  assign spo[254] = \<const0> ;
  assign spo[253] = \<const0> ;
  assign spo[252] = \<const0> ;
  assign spo[251] = \<const0> ;
  assign spo[250] = \<const0> ;
  assign spo[249:248] = \^spo [393:392];
  assign spo[247] = \<const0> ;
  assign spo[246] = \<const0> ;
  assign spo[245] = \<const0> ;
  assign spo[244] = \<const0> ;
  assign spo[243] = \<const0> ;
  assign spo[242] = \<const0> ;
  assign spo[241] = \<const0> ;
  assign spo[240] = \<const0> ;
  assign spo[239] = \<const0> ;
  assign spo[238] = \<const0> ;
  assign spo[237] = \<const0> ;
  assign spo[236] = \<const0> ;
  assign spo[235] = \<const0> ;
  assign spo[234] = \<const0> ;
  assign spo[233:232] = \^spo [393:392];
  assign spo[231] = \<const0> ;
  assign spo[230] = \<const0> ;
  assign spo[229] = \<const0> ;
  assign spo[228] = \<const0> ;
  assign spo[227] = \<const0> ;
  assign spo[226] = \<const0> ;
  assign spo[225] = \<const0> ;
  assign spo[224] = \<const0> ;
  assign spo[223] = \<const0> ;
  assign spo[222] = \<const0> ;
  assign spo[221] = \<const0> ;
  assign spo[220] = \<const0> ;
  assign spo[219] = \<const0> ;
  assign spo[218] = \<const0> ;
  assign spo[217:216] = \^spo [393:392];
  assign spo[215] = \<const0> ;
  assign spo[214] = \<const0> ;
  assign spo[213] = \<const0> ;
  assign spo[212] = \<const0> ;
  assign spo[211] = \<const0> ;
  assign spo[210] = \<const0> ;
  assign spo[209] = \<const0> ;
  assign spo[208] = \<const0> ;
  assign spo[207] = \<const0> ;
  assign spo[206] = \<const0> ;
  assign spo[205] = \<const0> ;
  assign spo[204] = \<const0> ;
  assign spo[203] = \<const0> ;
  assign spo[202] = \<const0> ;
  assign spo[201:200] = \^spo [393:392];
  assign spo[199] = \<const0> ;
  assign spo[198] = \<const0> ;
  assign spo[197] = \<const0> ;
  assign spo[196] = \<const0> ;
  assign spo[195] = \<const0> ;
  assign spo[194] = \<const0> ;
  assign spo[193] = \<const0> ;
  assign spo[192] = \<const0> ;
  assign spo[191] = \<const0> ;
  assign spo[190] = \<const0> ;
  assign spo[189] = \<const0> ;
  assign spo[188] = \<const0> ;
  assign spo[187] = \<const0> ;
  assign spo[186] = \<const0> ;
  assign spo[185:184] = \^spo [393:392];
  assign spo[183] = \<const0> ;
  assign spo[182] = \<const0> ;
  assign spo[181] = \<const0> ;
  assign spo[180] = \<const0> ;
  assign spo[179] = \<const0> ;
  assign spo[178] = \<const0> ;
  assign spo[177] = \<const0> ;
  assign spo[176] = \<const0> ;
  assign spo[175] = \<const0> ;
  assign spo[174] = \<const0> ;
  assign spo[173] = \<const0> ;
  assign spo[172] = \<const0> ;
  assign spo[171] = \<const0> ;
  assign spo[170] = \<const0> ;
  assign spo[169:168] = \^spo [393:392];
  assign spo[167] = \<const0> ;
  assign spo[166] = \<const0> ;
  assign spo[165] = \<const0> ;
  assign spo[164] = \<const0> ;
  assign spo[163] = \<const0> ;
  assign spo[162] = \<const0> ;
  assign spo[161] = \<const0> ;
  assign spo[160] = \<const0> ;
  assign spo[159] = \<const0> ;
  assign spo[158] = \<const0> ;
  assign spo[157] = \<const0> ;
  assign spo[156] = \<const0> ;
  assign spo[155] = \<const0> ;
  assign spo[154] = \<const0> ;
  assign spo[153:152] = \^spo [393:392];
  assign spo[151] = \<const0> ;
  assign spo[150] = \<const0> ;
  assign spo[149] = \<const0> ;
  assign spo[148] = \<const0> ;
  assign spo[147] = \<const0> ;
  assign spo[146] = \<const0> ;
  assign spo[145] = \<const0> ;
  assign spo[144] = \<const0> ;
  assign spo[143] = \<const0> ;
  assign spo[142] = \<const0> ;
  assign spo[141] = \<const0> ;
  assign spo[140] = \<const0> ;
  assign spo[139] = \<const0> ;
  assign spo[138] = \<const0> ;
  assign spo[137:136] = \^spo [393:392];
  assign spo[135] = \<const0> ;
  assign spo[134] = \<const0> ;
  assign spo[133] = \<const0> ;
  assign spo[132] = \<const0> ;
  assign spo[131] = \<const0> ;
  assign spo[130] = \<const0> ;
  assign spo[129] = \<const0> ;
  assign spo[128] = \<const0> ;
  assign spo[127] = \<const0> ;
  assign spo[126] = \<const0> ;
  assign spo[125] = \<const0> ;
  assign spo[124] = \<const0> ;
  assign spo[123] = \<const0> ;
  assign spo[122] = \<const0> ;
  assign spo[121:120] = \^spo [393:392];
  assign spo[119] = \<const0> ;
  assign spo[118] = \<const0> ;
  assign spo[117] = \<const0> ;
  assign spo[116] = \<const0> ;
  assign spo[115] = \<const0> ;
  assign spo[114] = \<const0> ;
  assign spo[113] = \<const0> ;
  assign spo[112] = \<const0> ;
  assign spo[111] = \<const0> ;
  assign spo[110] = \<const0> ;
  assign spo[109] = \<const0> ;
  assign spo[108] = \<const0> ;
  assign spo[107] = \<const0> ;
  assign spo[106] = \<const0> ;
  assign spo[105:104] = \^spo [393:392];
  assign spo[103] = \<const0> ;
  assign spo[102] = \<const0> ;
  assign spo[101] = \<const0> ;
  assign spo[100] = \<const0> ;
  assign spo[99] = \<const0> ;
  assign spo[98] = \<const0> ;
  assign spo[97] = \<const0> ;
  assign spo[96] = \<const0> ;
  assign spo[95] = \<const0> ;
  assign spo[94] = \<const0> ;
  assign spo[93] = \<const0> ;
  assign spo[92] = \<const0> ;
  assign spo[91] = \<const0> ;
  assign spo[90] = \<const0> ;
  assign spo[89:88] = \^spo [393:392];
  assign spo[87] = \<const0> ;
  assign spo[86] = \<const0> ;
  assign spo[85] = \<const0> ;
  assign spo[84] = \<const0> ;
  assign spo[83] = \<const0> ;
  assign spo[82] = \<const0> ;
  assign spo[81] = \<const0> ;
  assign spo[80] = \<const0> ;
  assign spo[79] = \<const0> ;
  assign spo[78] = \<const0> ;
  assign spo[77] = \<const0> ;
  assign spo[76] = \<const0> ;
  assign spo[75] = \<const0> ;
  assign spo[74] = \<const0> ;
  assign spo[73:72] = \^spo [393:392];
  assign spo[71] = \<const0> ;
  assign spo[70] = \<const0> ;
  assign spo[69] = \<const0> ;
  assign spo[68] = \<const0> ;
  assign spo[67] = \<const0> ;
  assign spo[66] = \<const0> ;
  assign spo[65] = \<const0> ;
  assign spo[64] = \<const0> ;
  assign spo[63] = \<const0> ;
  assign spo[62] = \<const0> ;
  assign spo[61] = \<const0> ;
  assign spo[60] = \<const0> ;
  assign spo[59] = \<const0> ;
  assign spo[58] = \<const0> ;
  assign spo[57:56] = \^spo [393:392];
  assign spo[55] = \<const0> ;
  assign spo[54] = \<const0> ;
  assign spo[53] = \<const0> ;
  assign spo[52] = \<const0> ;
  assign spo[51] = \<const0> ;
  assign spo[50] = \<const0> ;
  assign spo[49] = \<const0> ;
  assign spo[48] = \<const0> ;
  assign spo[47] = \<const0> ;
  assign spo[46] = \<const0> ;
  assign spo[45] = \<const0> ;
  assign spo[44] = \<const0> ;
  assign spo[43] = \<const0> ;
  assign spo[42] = \<const0> ;
  assign spo[41:40] = \^spo [393:392];
  assign spo[39] = \<const0> ;
  assign spo[38] = \<const0> ;
  assign spo[37] = \<const0> ;
  assign spo[36] = \<const0> ;
  assign spo[35] = \<const0> ;
  assign spo[34] = \<const0> ;
  assign spo[33] = \<const0> ;
  assign spo[32] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25:24] = \^spo [393:392];
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9:8] = \^spo [393:392];
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  MATRIX_ABC_ROM_dist_mem_gen_v8_0_12_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo(\^spo ));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_12_synth" *) 
module MATRIX_ABC_ROM_dist_mem_gen_v8_0_12_synth
   (spo,
    a);
  output [1:0]spo;
  input [6:0]a;

  wire [6:0]a;
  wire [1:0]spo;

  MATRIX_ABC_ROM_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module MATRIX_ABC_ROM_rom
   (spo,
    a);
  output [1:0]spo;
  input [6:0]a;

  wire [6:0]a;
  wire [1:0]spo;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[8]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[8]_INST_0_i_1_n_0 ),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hAAFF5555ABDD5555)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[3]),
        .I4(a[4]),
        .I5(a[2]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[6]),
        .I2(\spo[9]_INST_0_i_2_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000000005151515)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFC0C0C080)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[1]),
        .I5(a[5]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
endmodule
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
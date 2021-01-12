-makelib ies_lib/xil_defaultlib -sv \
  "F:/18.3/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/18.3/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Huabei_JJH_Ar.srcs/sources_1/ip/A_MATRIX_BRAM/sim/A_MATRIX_BRAM.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xcku115-flvd1517-1-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.cache/wt [current_project]
set_property parent.project_path B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files B:/wd/Huabei/Huabei/Jingjinhai_Army/hex_input_fea_1.coe
add_files {{B:/wd/Huabei/Huabei/Jingjinhai_Army/coe file/hex_input_fea_1.coe}}
add_files {{B:/wd/Huabei/Huabei/Jingjinhai_Army/coe file/matrix_abc.coe}}
add_files {{B:/wd/Huabei/Huabei/Jingjinhai_Army/coe file/conv1_wei_64Bx3.coe}}
add_files {{b:/wd/Huabei/Huabei/XuzhouDong/coe file/hex_input_fea_1.coe}}
add_files {{b:/wd/Huabei/Huabei/XuZhouDong/coe file/matrix_abc.coe}}
read_verilog -library xil_defaultlib {
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/selfadd_reg_16bx2.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/regheap_64_16b.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/25element_wise_adder_tree.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/A_matrix.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/conv1_layer1_dense_mxmult.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/conv1_layer1_dense_top.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/fanout_16_1024_5layer.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/fanout_16_64_1layer.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/global_in_fea.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/paramult_1_64.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/clk_rst.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/dyn_iss_demo.v
  B:/wd/Huabei/Huabei/Jingjinhai_Army/code/conv1_wei_64x3chn.v
}
read_ip -quiet B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/MULT_16X16/MULT_16X16.xci
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/MULT_16X16/MULT_16X16_ooc.xdc]

read_ip -quiet B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/IN_FEA_BRAM/IN_FEA_BRAM.xci
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/IN_FEA_BRAM/IN_FEA_BRAM_ooc.xdc]

read_ip -quiet B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/A_MATRIX_BRAM/A_MATRIX_BRAM.xci
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/A_MATRIX_BRAM/A_MATRIX_BRAM_ooc.xdc]

read_ip -quiet B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/ADDER_16P16/ADDER_16P16.xci
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/ADDER_16P16/ADDER_16P16_ooc.xdc]

read_ip -quiet B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/fifo_32bx4/fifo_32bx4.xci
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/fifo_32bx4/fifo_32bx4.xdc]
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/fifo_32bx4/fifo_32bx4_ooc.xdc]

read_ip -quiet B:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/CONV1_WEI_64BX3X3/CONV1_WEI_64BX3X3.xci
set_property used_in_implementation false [get_files -all b:/wd/Huabei/Huabei/Jingjinhai_Army/Huabei_JJH_Ar/Huabei_JJH_Ar.srcs/sources_1/ip/CONV1_WEI_64BX3X3/CONV1_WEI_64BX3X3_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top clk_rst -part xcku115-flvd1517-1-i


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef clk_rst.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file clk_rst_utilization_synth.rpt -pb clk_rst_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]

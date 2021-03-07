onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_12 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.BN_PARA_64CHN xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {BN_PARA_64CHN.udo}

run -all

quit -force

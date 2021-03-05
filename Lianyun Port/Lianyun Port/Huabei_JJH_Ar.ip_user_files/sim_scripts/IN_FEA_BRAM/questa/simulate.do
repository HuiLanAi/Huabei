onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib IN_FEA_BRAM_opt

do {wave.do}

view wave
view structure
view signals

do {IN_FEA_BRAM.udo}

run -all

quit -force

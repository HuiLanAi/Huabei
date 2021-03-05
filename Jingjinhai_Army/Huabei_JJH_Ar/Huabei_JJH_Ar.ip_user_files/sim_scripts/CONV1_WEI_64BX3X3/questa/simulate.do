onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib CONV1_WEI_64BX3X3_opt

do {wave.do}

view wave
view structure
view signals

do {CONV1_WEI_64BX3X3.udo}

run -all

quit -force

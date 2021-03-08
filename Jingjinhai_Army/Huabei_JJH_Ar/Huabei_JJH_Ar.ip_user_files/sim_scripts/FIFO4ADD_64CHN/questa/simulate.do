onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO4ADD_64CHN_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO4ADD_64CHN.udo}

run -all

quit -force

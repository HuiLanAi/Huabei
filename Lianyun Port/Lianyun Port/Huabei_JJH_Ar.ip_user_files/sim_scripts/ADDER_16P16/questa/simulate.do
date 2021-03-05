onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ADDER_16P16_opt

do {wave.do}

view wave
view structure
view signals

do {ADDER_16P16.udo}

run -all

quit -force

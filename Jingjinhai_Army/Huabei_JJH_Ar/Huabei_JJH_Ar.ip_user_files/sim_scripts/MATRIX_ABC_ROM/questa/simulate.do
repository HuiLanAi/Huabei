onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MATRIX_ABC_ROM_opt

do {wave.do}

view wave
view structure
view signals

do {MATRIX_ABC_ROM.udo}

run -all

quit -force

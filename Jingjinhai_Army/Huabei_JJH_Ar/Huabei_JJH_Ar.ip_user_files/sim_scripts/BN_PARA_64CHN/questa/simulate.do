onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BN_PARA_64CHN_opt

do {wave.do}

view wave
view structure
view signals

do {BN_PARA_64CHN.udo}

run -all

quit -force

onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FIFO4ADD_64CHN -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO4ADD_64CHN xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO4ADD_64CHN.udo}

run -all

endsim

quit -force

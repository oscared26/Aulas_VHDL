vlib work

vmap work

vcom -93 -work work contador.vhd
vcom -93 -work work contador_tb.vhd



vsim contador_tb

do wave.do
view wave
view structure
view signals
run 2 us
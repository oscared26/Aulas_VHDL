vlib work

vmap work

vcom -93 -work work fibonacci.vhd
vcom -93 -work work fibonacci_tb.vhd

vsim fibonacci_tb

do wave.do
view wave
view structure
view signals
run 1 us
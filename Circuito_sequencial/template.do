transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/oscar/Documentos/GitHub/Aulas_VHDL/ALU/arith_unit.vhd}
vcom -93 -work work {/home/oscar/Documentos/GitHub/Aulas_VHDL/ALU/logic_unit.vhd}
vcom -93 -work work {/home/oscar/Documentos/GitHub/Aulas_VHDL/ALU/muxi.vhd}
vcom -93 -work work {/home/oscar/Documentos/GitHub/Aulas_VHDL/ALU/alu.vhd}

vcom -93 -work work {/home/oscar/Documentos/GitHub/Aulas_VHDL/ALU/alu_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run 200 ns

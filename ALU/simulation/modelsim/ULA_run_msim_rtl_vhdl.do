transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/oscar/Documentos/GitLab/VHDL/Altera/Aulas/ALU/arith_unit.vhd}
vcom -93 -work work {/home/oscar/Documentos/GitLab/VHDL/Altera/Aulas/ALU/logic_unit.vhd}
vcom -93 -work work {/home/oscar/Documentos/GitLab/VHDL/Altera/Aulas/ALU/muxi.vhd}
vcom -93 -work work {/home/oscar/Documentos/GitLab/VHDL/Altera/Aulas/ALU/alu.vhd}

vcom -93 -work work {/home/oscar/Documentos/GitLab/VHDL/Altera/Aulas/ALU/alu_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  alu_tb

do wave.do
view wave
view structure
view signals
run 150 ns

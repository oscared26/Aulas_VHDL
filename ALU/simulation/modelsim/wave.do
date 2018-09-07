onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Magenta -radix unsigned /alu_tb/sel
add wave -noupdate -color Red -radix unsigned /alu_tb/a
add wave -noupdate -color {Medium Slate Blue} -radix unsigned /alu_tb/b
add wave -noupdate -radix unsigned /alu_tb/cin
add wave -noupdate -color Magenta -radix unsigned /alu_tb/y
add wave -noupdate -color Blue -radix unsigned /alu_tb/DUT/circuit0/x
add wave -noupdate -color Magenta -radix unsigned /alu_tb/DUT/circuit1/x
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22610 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {93984 ps}

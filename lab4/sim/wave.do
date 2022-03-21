onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top/clk
add wave -noupdate /top/test_clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8766275 ps} 0}
configure wave -namecolwidth 40
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {8766186 ps} {8766454 ps}

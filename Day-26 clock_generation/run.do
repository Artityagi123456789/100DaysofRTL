vlog clk2.v
vsim tb +freq=200  +duty=40 +jitter=2
add wave -position insertpoint tb/*
run -all

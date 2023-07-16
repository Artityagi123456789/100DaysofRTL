vlog tb_fifo.v
vsim tb
add wave -position insertpoint sim:/tb/dut/*
run -all 

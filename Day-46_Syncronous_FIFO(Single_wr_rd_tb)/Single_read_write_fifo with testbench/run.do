vlog tb_wr_rd.v
vsim tb +seed=1234
add wave sim:/tb/dut/*
run -all


`timescale 1ns/1ps
`include "mem1.v"

module tb;
parameter DEPTH = 16;
parameter WIDTH = 4;
parameter ADDR_WIDTH = $clog2(DEPTH);
reg clk_i,reset_i,wd_rd_en_i,valid_i;
reg [WIDTH-1:0]wdata_i;
reg [ADDR_WIDTH-1:0]addr_i;
wire [WIDTH-1:0]rdata_o;
wire ready_o;
//wire [WIDTH-1:0]mem[DEPTH-1:0];
integer i;
//mem #(.DEPTH(DEPTH), .WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) dut(clk_i,reset_i,wdata_i,addr_i,wd_rd_en_i,valid_i,rdata_o,ready_o);
mem #(.DEPTH(DEPTH), .WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) dut(.*);

initial begin
clk_i = 0;
forever #5 clk_i = ~clk_i;
end

initial begin
	reset_i = 1;
	wdata_i = 0;
	addr_i = 0;
	wd_rd_en_i = 0;
	valid_i =0;
	#30;
	reset_i = 0;
	for(i=0; i<=DEPTH; i=i+1)begin
		@(posedge clk_i)
			wdata_i = $random;
			addr_i = i;
			wd_rd_en_i = 1;
			valid_i = 1;
			wait(ready_o == 1);
	end
			wdata_i = 0;
     		addr_i = 0;
     		wd_rd_en_i = 0;
     		valid_i = 0;
	for(i=0; i<=DEPTH; i=i+1)begin
			@(posedge clk_i)
				addr_i = i;
				wd_rd_en_i = 0;
				valid_i = 1;
				wait(ready_o == 1);
	end
        	addr_i = 0;
     		wd_rd_en_i = 0;
     		valid_i = 0;
end
initial begin
	#1000;
	$finish;
end	
endmodule
	









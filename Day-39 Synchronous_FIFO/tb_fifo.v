`include "fifo.v"
module tb;
parameter DEPTH=16;
parameter WIDTH=4;
parameter ADDR_WIDTH=$clog2(DEPTH);
reg clk_i,rst_i,wr_en_i,rd_en_i;
reg [WIDTH-1:0]wdata_i;
//reg [ADDR_WIDTH-1:0]wr_ptr;//these signals are internal signals ,need not to declare inside portlist
//reg [ADDR_WIDTH-1:0]rd_ptr;
wire empty_o,full_o,error_o;
wire [WIDTH-1:0]rdata_o;
integer i;
//wire wr_toggle_f;
//wire rd_toggle_f;

fifo #(.DEPTH(DEPTH), .WIDTH(WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) dut(clk_i,rst_i,wdata_i,wr_en_i,rd_en_i,full_o,empty_o,error_o,rdata_o);

initial begin
clk_i = 0;
forever #5 clk_i = ~clk_i;
end

initial begin
	rst_i=1;
	wr_en_i=0;
	rd_en_i=0;
	wdata_i=0;
	#30;
	rst_i =0;
    for(i=0;i<=DEPTH; i =i+1)begin
		@(posedge clk_i)
		wdata_i =$random;
		wr_en_i=1;
	end	
		wdata_i = 0;
		wr_en_i =0;
    for(i=0;i<=DEPTH; i =i+1)begin
		@(posedge clk_i)
		rd_en_i=1;
	end	
		rd_en_i=0;
end		
initial begin
#500;
$finish;
end
endmodule



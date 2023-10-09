module fifo_s(clk_i,rst_i,wdata_i,full_o,wr_en_i,wr_error_o,rdata_o,empty_o,rd_en_i,rd_error_o);
parameter WIDTH=8,DEPTH=16,PTR_ADDR=4;
input clk_i,rst_i,wr_en_i,rd_en_i;
input [WIDTH-1:0]wdata_i;
output reg[WIDTH-1:0]rdata_o;
output reg full_o,empty_o,wr_error_o,rd_error_o;
reg[PTR_ADDR-1:0]wr_ptr,rd_ptr;
reg wr_toggle_f,rd_toggle_f;
integer i;
reg [WIDTH-1:0]mem[DEPTH-1:0];

always @(posedge clk_i) begin
if(rst_i == 1)begin
	rdata_o=0;
	full_o=0;
	empty_o=0;
	wr_error_o=0;
	rd_error_o=0;
	wr_ptr=0;
	rd_ptr=0;
	wr_toggle_f=0;
	rd_toggle_f=0;
	for(i=0; i<DEPTH; i=i+1) begin
		mem[i]=1;
	end
end
else begin
	if(wr_en_i == 1)begin
		if(full_o == 1)begin
			wr_error_o = 1;
		end
		else begin
			mem[wr_ptr] = wdata_i;
			wr_error_o = 0;
			if(wr_ptr == DEPTH-1) wr_toggle_f = ~wr_toggle_f;
			wr_ptr = wr_ptr+1;
		end	
	end	
	if(rd_en_i == 1)begin
		if(empty_o == 1)begin
			rd_error_o = 1;
		end
		else begin
			rdata_o = mem[rd_ptr];
			rd_error_o = 0;
			if(rd_ptr == DEPTH-1) rd_toggle_f = ~rd_toggle_f;
			rd_ptr = rd_ptr+1;
		end	
	end	
end
end

always@(*) begin
	empty_o=0;
	full_o=0;
	if(wr_ptr == rd_ptr) begin
		if(wr_toggle_f == rd_toggle_f) empty_o = 1;
		if(wr_toggle_f !== rd_toggle_f) full_o = 1;
	end
end
endmodule






























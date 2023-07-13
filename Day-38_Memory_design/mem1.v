module mem(clk_i,reset_i,wdata_i,addr_i,wd_rd_en_i,valid_i,rdata_o,,ready_o);
parameter DEPTH = 16;
parameter WIDTH = 4;
parameter ADDR_WIDTH = $clog2(DEPTH);
input clk_i,reset_i,wd_rd_en_i,valid_i;
input [WIDTH-1:0]wdata_i;
input [ADDR_WIDTH-1:0]addr_i;
output reg[WIDTH-1:0]rdata_o;
output reg ready_o;
reg [WIDTH-1:0]mem[DEPTH-1:0];
integer i;

always@(posedge clk_i)begin
if(reset_i ==1)begin
		rdata_o = 0;
	  	 ready_o = 0;
	   for(i=0; i<DEPTH; i=i+1)begin
	   		mem[i]=0;
	   end
	 end  
	  else begin
	   		if(valid_i ==1)begin
				ready_o = 1;
				if(wd_rd_en_i == 1)begin
					mem[addr_i]=wdata_i;
				end
				else begin	
					rdata_o = mem[addr_i];
	            end
			end
	 else begin
			ready_o = 0;
	 end
	end
end
endmodule

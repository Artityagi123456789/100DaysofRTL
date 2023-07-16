module fifo(clk_i,rst_i,wdata_i,wr_en_i,rd_en_i,full_o,empty_o,error_o,rdata_o);
parameter DEPTH=16;
parameter WIDTH=4;
parameter ADDR_WIDTH=$clog2(DEPTH);
input clk_i,rst_i,wr_en_i,rd_en_i;
input [WIDTH-1:0]wdata_i;
reg [ADDR_WIDTH-1:0]wr_ptr;//these signals are internal signals ,need not to declare inside portlist
reg [ADDR_WIDTH-1:0]rd_ptr;
output reg empty_o,full_o,error_o;
output reg [WIDTH-1:0]rdata_o;
integer i;
reg wr_toggle_f;
reg rd_toggle_f;
reg [WIDTH-1:0]fifo[DEPTH-1:0];//fifo(is memory)declaration
always@(posedge clk_i)begin
	if(rst_i==1)begin
		full_o=0;
		empty_o=1;
		rdata_o=0;
		error_o=0;
		wr_ptr=0;
		rd_ptr=0;
	    wr_toggle_f=0;
		rd_toggle_f=0;
		for(i=0;i<DEPTH;i=i+1)begin
			fifo[i]=0;
		end
	end
	else begin
		if(wr_en_i==1)begin
			if(full_o == 0)begin
				error_o =0;
				fifo[wr_ptr]=wdata_i;// write data(wdata) will be assigned to the write pointer
				if(wr_ptr == DEPTH-1)begin
					wr_ptr =0;
					wr_toggle_f = ~wr_toggle_f;
                end
			else begin
				wr_ptr = wr_ptr+1;
		    end
		end
		else begin
			error_o=1;
		end
	end	
	else begin
			if(rd_en_i==1)begin
				if(empty_o == 0)begin
					error_o =0;
					rdata_o=fifo[rd_ptr];
					if(rd_ptr == DEPTH-1)begin
						rd_ptr =0;
						rd_toggle_f = ~rd_toggle_f;
               		end
				else begin
					rd_ptr = rd_ptr+1;
		        end
			end
			else begin
				error_o=1;
			end
   		 end
	end
end	
end
always@(*) begin
	full_o =0;
	empty_o =0;
	if(wr_ptr==rd_ptr && wr_toggle_f==rd_toggle_f)begin
		empty_o =1;
	end	
	if(wr_ptr==rd_ptr && wr_toggle_f==rd_toggle_f)begin
		full_o =1;
	end
end
endmodule




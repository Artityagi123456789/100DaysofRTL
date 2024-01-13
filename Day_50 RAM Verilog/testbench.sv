module top;
  reg wr_clk,rd_clk; 
  reg wr_en;
  reg[7:0]wr_addr;
  reg[7:0]wr_data;
  reg [7:0]rd_addr;
  wire[7:0]rd_data;
  
 RAM dut(wr_clk,rd_clk,wr_en,wr_addr,rd_addr,wr_data,rd_data);

  initial begin
    wr_en = 0;
    wr_clk = 0;
    rd_clk = 0;
    wr_addr= 0;
    //rd_addr = 0;
    wr_data =0;
  end
  always #5 wr_clk = ~wr_clk;
  always #5 rd_clk = ~rd_clk;
  
 initial begin
   $monitor("%0t,wr_addr=%0h,rd_addr=%0h,wr_data=%0h,rd_data=%0h",$time, wr_addr,rd_addr,wr_data,rd_data);
 @(posedge wr_clk)
 	 wr_en = 1'b1;
 	 wr_addr = 8'h7;
 	 wr_data = 8'h11;
  	#10
   @(posedge rd_clk)
      wr_en = 1'b0;
  	  rd_addr = 8'h7;
    #10;
 end
  initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0);    
    #50 $finish;
  end
endmodule

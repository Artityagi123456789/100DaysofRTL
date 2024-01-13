//Design file for RAM(Memory)
/*Design Specification:
Ram Memory with byte-addressable system(1 address can access 1 byte of data).
it has 1 read & 1write port
write port has signals: wr_clk(1bit),wr_en(1bit),wr_addr(8bit),wr_data(8bit)
read port has signals: rd_clk(1bit),rd_addr(8bit),rd_data(8bit).*/

module RAM(wr_clk,rd_clk,wr_en,wr_addr,rd_addr,wr_data,rd_data);
  input wr_clk,rd_clk;
  input wr_en;
  input[7:0]wr_addr;
  input[7:0]wr_data;
  input[7:0]rd_addr;
  output reg[7:0]rd_data;
  
  reg[7:0]RAM[7:0];
  reg[7:0] temp;
  
  always@(posedge wr_clk)begin
    if(wr_en == 1)begin
      RAM[wr_addr] = wr_data;
      temp = RAM[wr_addr];
    end
  end
    
  always@(posedge rd_clk)begin
    if(wr_en == 0)begin
      rd_data = temp;
    end
   end
endmodule





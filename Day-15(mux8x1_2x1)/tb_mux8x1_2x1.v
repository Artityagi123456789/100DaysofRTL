`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2023 20:30:58
// Design Name: 
// Module Name: tb_mux8x1_2x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_mux8x1_2x1_tb;
reg[7:0]i;
reg[2:0]s;
wire y;

mux8x1_2x1 dut(i,s,y);
initial begin
i=0; s=0;

#5 i=8'b11010110;
#5 s=3'b000;

#5 s=3'b001;
#5 s=3'b010;
#5 s=3'b011;
#5 s=3'b100;
#5 s=3'b101;
#5 s=3'b110;
#5 s=3'b111;

#50; $finish;
end

endmodule

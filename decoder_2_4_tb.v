`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 12:48:33
// Design Name: 
// Module Name: decoder_2_4_tb
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


module decoder_2_4_tb();
reg A,B,enable;
wire [0:3]D;

decoder_2_to_4  dut(D,A,B,enable);

initial
begin
A=0; B=0;enable=1;
#10
A=0; B=1;enable=0;
#10
A=1; B=0;enable=0;
#10
A=1; B=1;enable=0;
#10

$finish();
end

endmodule

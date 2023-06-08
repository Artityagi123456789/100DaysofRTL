`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2023 13:31:55
// Design Name: 
// Module Name: hf_tb
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


module hf_tb();
reg t_a,t_b;
wire s,c;

half_adder dut(.a(t_a), .b(t_b), .s(s), .c(c));

initial begin
t_a=0;t_b=0;
#10

t_a=0;t_b=1;
#10
t_a=1;t_b=0;
#10
t_a=1;t_b=1;
#10
$stop;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2023 20:04:47
// Design Name: 
// Module Name: tb_halfsubtractor
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


module tb;
reg a,b;
wire diff,borrw;

HS_gate dut(.a(a), .b(b), .diff(diff), .borrw(borrw));

initial begin

a=0; b=0;

#100 a=0; b=1; 
#100 a=1; b=0; 
#100 a=1; b=1;

$display($time, "a=%b, b=%b, diff=%b, borrw=%b", a,b,diff,borrw);

end
endmodule




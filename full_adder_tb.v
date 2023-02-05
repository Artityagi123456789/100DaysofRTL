`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2023 14:52:20
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a,b,c;
wire sum,carry;

full_adder dut(a,b,c,sum,carry);
initial begin
a=0; b=0; c=0;

#10
a=0; b=0; c=1;
#10
a=0; b=1; c=0;
#10
a=0; b=1; c=1;
#10
a=1; b=0; c=0;
#10
a=1; b=0; c=1;
#10
a=1; b=1; c=0;
#10
a=1; b=1; c=1;
#10
$stop();
end

endmodule

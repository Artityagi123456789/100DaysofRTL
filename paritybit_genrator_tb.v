`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2023 15:23:52
// Design Name: 
// Module Name: paritybit_genrator_tb
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


module paritybit_genrator_tb();
reg x,y,z;
wire result;

peritybit_genrator uut(
     .x(x),
     .y(y),
     .z(z),
     .result(result));
     
initial
begin
x=0; y=0; z=0;
#10;
x=0; y=0; z=1;
#10;
x=0; y=1; z=0;
#10;
x=0; y=1; z=1;
#10;
x=1; y=0; z=0;
#10;
x=1; y=0; z=1;
#10;
x=1; y=1; z=0;
#10;
x=1; y=1; z=1;
#10;

$finish();
end
endmodule
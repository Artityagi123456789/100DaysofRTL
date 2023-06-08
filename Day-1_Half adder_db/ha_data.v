
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 014.05.2023 12:47:17
// Design Name: 
// Module Name: half_adder
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

//Implementaion of HALF ADDER by using Data Flow Modelling
module half_adder(
    input a,
    input b,
    output sum,carry
    );
  assign sum=a^b;
  assign carry=a&b;
endmodule



//Implementaion of HALF ADDER by using gate Flow Modelling

module half_adder(sum,carry,a,b);
input a,b;
output sum,carry;
xor g1(sum,a,b);
xor g2(carry,a,b);
endmodule



//Implementaion of HALF ADDER by using Behavioural Modelling

module half_adder(
    input a,
    input b,
    output reg sum,carry
    );
    always@(*)
    begin
   sum=a^b;
   carry=a&b;
  end
endmodule

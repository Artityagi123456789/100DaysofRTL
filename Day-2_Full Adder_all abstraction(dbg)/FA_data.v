`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2023 14:47:23
// Design Name: 
// Module Name: full_adder
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


//Implementaion of Full ADDER by using Data Flow Modelling

module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;

assign sum=a^b^c;
assign carry=a&b&c;

endmodule


//Implementaion of Full ADDER by using gate level Modelling

module FA_gate(a,b,c,sum,cout);
input a,b,c;
output sum,cout;

wire c1,c2,c3,out1;

xor x1(c1,a,b);
xor x2(sum,a,b);
and a1(c1,a,b);
and a2(c2,w1,c);
or  o1(cout,c2,c1);


endmodule

//Implementaion of Full ADDER by using Behavioural Modelling


module FA_bhv(a,b,c,sum,cout);
input a,b,c;
output reg sum,cout;

always@(*)
begin
//FA input for sum
case ({a,b,c})
3'b000: sum=0;
3'b001: sum=1;
3'b010: sum=1;
3'b011: sum=0;
3'b100: sum=1;
3'b101: sum=0;
3'b110: sum=0;
3'b111: sum=1;
default: sum=0;
endcase

// Full Adder carry 
case ({a,b,c})
3'b000: cout=0;
3'b001: cout=0;
3'b010: cout=0;
3'b011: cout=1;
3'b100: cout=0;
3'b101: cout=1;
3'b110: cout=1;
3'b111: cout=1;
default: cout=0;
endcase
end

endmodule



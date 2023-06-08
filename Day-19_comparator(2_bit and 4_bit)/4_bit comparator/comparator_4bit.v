`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 09:59:36
// Design Name: 
// Module Name: comparator_4bit
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
/////////////////////////////////////////////////////////////////////////////

    // 4 bit_comparator using Bhaviour modeling

module comparator_4bit(a,b,equal,greater,less);
input [3:0] a;
input [3:0]b;

output reg equal;
output reg greater;
output reg less;

always @(*) begin
equal=0; greater=0; less=0;
     if(a>b)
	 begin
	     equal = 0;
	     less = 0;
	     greater = 1;
	 end 

	 else if(a<b)
	 begin
	     equal = 0;
              less = 1;
              greater = 0;
	 end
	
	 else  begin
	     equal = 1;
              less = 0;
              greater = 0;
     end
end		 
	     
endmodule
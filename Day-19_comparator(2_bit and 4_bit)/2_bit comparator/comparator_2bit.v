`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 08:56:32
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(a,b,equal,greater,less);
input [1:0]a;
input [1:0]b;

output reg  equal;
output reg  greater;
output reg less;


always@(*) begin
equal=0; greater=0; less=0;
     if(a==b) 
	      equal = 2'b01;
	      
	 else if(a>b) 
	       greater = 2'b01;
	 else if(a<b) 
	        less = 2'b01;
	      

end	     
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2023 13:18:30
// Design Name: 
// Module Name: Decoder_4x16_2x4
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


module Decoder4x16(y,a,En);
output[15:0]y;
input[3:0]a;
input En;

wire [3:0]w;

dec2x4 dec1(w,a[3:2],En);
dec2x4 dec2(y[3:0],a[1:0],w[0]);
dec2x4 dec3(y[7:4],a[1:0],w[1]);
dec2x4 dec4(y[11:8],a[1:0],w[2]);
dec2x4 dec5(y[15:12],a[1:0],w[3]);

endmodule

module dec2x4(y,a,En);
output reg [3:0]y;
input[1:0]a;
input En;

always@(a,En)
       begin
               if (En==1)
               begin
                     y=4'b0000;
                     y[a]=1;
               end
               else
                     y=4'b0000;     
                     
  end 
endmodule
   
     
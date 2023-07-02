`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: sync_up-down_counter
module sync_up_down_counter(clk,reset,mode,count);
input clk,reset;
input mode;  //high for up_counter and low for Down_counter
output [3:0] count;
reg [3:0] count = 4'b0000;      //Internal variables

always @(posedge clk or posedge reset) begin
if(reset==1)
    count <= 0;
 else
   if(mode == 1)    //for up_counter
          if(count ==15)
               count <= 0;        
          else
               count = count+1;
   else                            //for down_counter
           if(count == 0)   
                    count <= 15;
           else
               count = count-1;
                                
end
endmodule

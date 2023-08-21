`timescale 1ns / 1ps
// Module Name: LFSR


module LFSR(clk,reset,seq_out);
input clk,reset;
output reg [3:0] seq_out;

always@(posedge clk)begin
    if(reset)
        seq_out <= 4'hf;
     else 
           seq_out <= {seq_out[2:0], seq_out[3]^seq_out[2]};
       
end           
endmodule

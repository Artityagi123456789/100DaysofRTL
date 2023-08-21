`timescale 1ns / 1ps
module Tb_Priority_Encoder;
reg [7:0]in;
wire [2:0]out;

Priority_Encoder dut(out,in);

initial begin
    repeat(10) begin
        in = $random;
        #10;
     end   
end  
initial begin 
$monitor("in: %b  out: %b",in, out);
     #100 $finish;
     end
endmodule

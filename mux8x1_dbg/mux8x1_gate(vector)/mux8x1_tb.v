`include "mux8x1_g.v"

module tb;
reg[7:0]i;
reg[2:0]s;
wire out;
wire[7:0]w;

mux8x1_g muxg(i,s,out);

initial begin
        repeat(8) begin
              {i,s}  = $random;
               #5;
        $display("time = %t, i=%b,sel = %b,out = %b", $time,i,s,out);
       end 
 end

endmodule

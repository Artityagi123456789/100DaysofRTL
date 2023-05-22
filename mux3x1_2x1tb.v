//design a 3x1_mux using 2x1_mux using hierarchical modeling concept..
`include "mux3x1_2x1.v"

module tb;
reg[2:0]i;
reg[1:0]sel;

wire y;
 
mux2x1 mux1(i,sel,y);
initial begin
         repeat(3) begin
         {i,sel} = $random;
		 #5;
		 $display("sel=%b,i=%b,y=%b",sel,i,y);
		 end
	end

endmodule	
		 


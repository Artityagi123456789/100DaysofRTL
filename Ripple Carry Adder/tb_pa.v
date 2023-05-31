`include"PA.v"

module tb;

reg [3:0] a,b;
reg cin;
//output value
wire[3:0]sum;
wire cout;

// Instantiate the design Under Test (dUT)

Parallel_adder dut(a,b,cin,sum,cout);

initial begin

a=4'b0000; b=4'b0000; cin=1'b0;

a=4'b0001; b=4'b0010; cin=1'b1;
#10;

a=4'b0001; b=4'b0110; cin=1'b0;
#10;

a=4'b0101; b=4'b0011; cin=1'b0;
#10;

$display("a=%d, b=%d, cin=%d -> sum=%d cout=%b" , a,b,cin,sum,cout);
end
endmodule

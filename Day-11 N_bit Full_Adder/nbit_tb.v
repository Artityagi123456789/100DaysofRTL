`include "nbit_adder.v"

module top;
parameter N=32;
reg [31:0]a,b;
reg cin; 
wire [31:0]sum; 
wire cout;
integer i;

Nbit_adder dut(a,b,cin,sum,cout);

initial 
begin
for(i=0; i<=31; i=i+1) begin
{a,b,cin}=$random;
#1;
end
end

initial begin
$monitor("input a = %0d , b = %0d,cin = %0d\n cout = %0d\n, sum = %d\n" , a, b, cin, cout, sum);

end
endmodule

 


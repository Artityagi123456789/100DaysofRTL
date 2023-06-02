`include "nbit_fulladder.v"

module tb;
parameter N=8;
reg [N-1:0]a,b;
reg cin;
wire[N-1:0]sum;
wire cout;

addernbit #(.N(N))dut(sum,cout,a,b,cin);

initial begin
repeat(5) begin
{a} = $random;
{b} = $random;
{cin}=$random;
#1;

$monitor("a=%d, b=%d,cin=%d,sum=%d,cout=%d",a,b,cin,sum,cout);

end
end

endmodule


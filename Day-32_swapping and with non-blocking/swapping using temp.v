//write a verilog program for interchanging two numbers
//a. using a temporary variable 

module tb;
integer a,b,y_t;
initial begin
a = 10;
b = 32;
$display("value before swapping a = %0d, b=%0d",a,b,$time);
end

initial begin
y_t = a;
a = b;
b = y_t;
#5;
$display("value after swapping a = %0d, b=%0d",a,b,$time);
end
endmodule

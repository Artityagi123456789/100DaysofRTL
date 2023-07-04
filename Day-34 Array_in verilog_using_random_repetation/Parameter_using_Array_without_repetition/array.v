//Q. Implement unique random example for array size of  20, value between 40 to 59 without repetation.

module tb;
parameter NUM = 20;
integer array[NUM-1:0];
integer value;
integer i, j;
reg flag;

initial begin
	for(i=0; i<=NUM; i=i+1) begin
		value = $urandom_range(40,59);
		flag =0;
		for(j=0; j<=i; j = j+1) begin
			if(array[j] == value) begin
				flag = 1;
				j = i;
			end
		end
		if(flag == 0)begin
			array[i] =value;
			$display("array[%0d]=%0d",i,array[i]);
		end
	end
end
endmodule



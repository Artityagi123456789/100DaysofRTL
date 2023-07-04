//Q2 c. Assign unique random values between 40 to 49 to the array elements i. it means no repetatio of numbers in the array...

module tb;
integer arr_a[9:0];
integer i,j;
integer value;
reg flag;//if 0 then the value is not unique if 1 then value is unique


initial begin
	for(i=0;i<10;)begin
		value=$urandom_range(40,49);
		flag=1;//we assume that we are getting unique value
		for(j=0;j<i;j=j+1)begin
			if(arr_a[j]==value)begin
				flag=0;
			//	j=i;
			end
		end
		if(flag==1)begin
			arr_a[i]=value;
		i=i+1;
		end
	end
	for(i=0;i<10;i=i+1)begin
		$display("arr_a[%0d]=%0d",i,arr_a[i]);	
	end
end
endmodule

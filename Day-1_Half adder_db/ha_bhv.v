module ha_bhv(a,b,sum,carry);

input a,b;
output reg sum,carry;

always@(a or b)begin
     if(a==0 && b ==0) begin
	   sum = 0;
	   carry = 0;
	 end

	 else if(a==1 && b==1) begin
	    sum = 0;
   	   carry = 1;
	 end

	 else begin //(a==1 && b==0) or (a==0 && b==1)
	   sum = 1;
	   carry = 0;
     end 
end
endmodule

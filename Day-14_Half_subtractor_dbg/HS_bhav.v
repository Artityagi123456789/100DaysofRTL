`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2023 14:27:46
// Design Name: 
// Module Name: HS_bhav
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HS_bhav(a,b,diff,borrw);
input a,b;
output diff,borrw;
reg diff,borrw;

always@(a or b)
begin
diff = a^b;
borrw = (~a) & b;
end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2022 19:32:31
// Design Name: 
// Module Name: adder1
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


module adder1(l0,l1,carry,mode,sum,carry_out);
input l0,l1,carry,mode;
output reg sum;
output reg carry_out;


always@(l0 or l1 or carry)
begin
    sum<=l0^l1^carry;
    carry_out<= (l0 & carry) | (l0 & l1) | (l1 & carry);
end

endmodule

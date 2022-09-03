`timescale 1ns / 1ps
`include "adder1.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2022 21:38:42
// Design Name: 
// Module Name: adder8
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


module adder8(data0,data1,mode,sum,final_carry_out);
input [0:7] data0, data1;
input mode;
output [0:7]sum;
output final_carry_out;
wire carry1,carry2,carry3,carry4;
wire carry5,carry6,carry7;
reg carryx;

always@(mode)
begin
if (mode==1)
    carryx<=1'b0;
else
    carryx<=1'b1;
end


adder1 A1(data0[0],data1[0]^carryx,carryx,mode,sum[0],carry1);
adder1 A2(data0[1],data1[1]^carryx,carry1,mode,sum[1],carry2);
adder1 A3(data0[2],data1[2]^carryx,carry2,mode,sum[2],carry3);
adder1 A4(data0[3],data1[3]^carryx,carry3,mode,sum[3],carry4);
adder1 A5(data0[4],data1[4]^carryx,carry4,mode,sum[4],carry5);
adder1 A6(data0[5],data1[5]^carryx,carry5,mode,sum[5],carry6);
adder1 A7(data0[6],data1[6]^carryx,carry6,mode,sum[6],carry7);
adder1 A8(data0[7],data1[7]^carryx,carry7,mode,sum[7],final_carry_out);



endmodule

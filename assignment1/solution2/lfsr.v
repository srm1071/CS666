`timescale 1ns / 1ps
`include "dflip.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2022 15:39:15
// Design Name: 
// Module Name: lfsr
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


module lfsr(start,seed1,clk,reset,out);
input [15:0]seed1;
input clk,reset,start;
output [15:0] out;
wire out1;
wire [0:14]qd;
parameter n=14;
reg [15:0]seed;

genvar i;
  generate
  for(i=0; i<=n; i=i+1)
     dflip D(.d(seed[i]),.clk(clk),.reset(reset),.Q(qd[i]));
  endgenerate

dflip D_last(.d(seed[15]),.clk(clk),.reset(reset),.Q(out1));

always@(posedge clk)
if(start)
begin
    seed[0]<=out1;
    seed[1]<=qd[0];
    seed[2]<=qd[1]^out1;
    //seed[2]<=qd[1];

    seed[3]<=qd[2]^out1;
    //seed[3]<=qd[2];

    seed[4]<=qd[3];

    seed[5]<=qd[4]^out1;
    //seed[5]<=qd[4];

    seed[6]<=qd[5];
    seed[7]<=qd[6];
    seed[8]<=qd[7];
    seed[9]<=qd[8];
    seed[10]<=qd[9];
    seed[11]<=qd[10];
    seed[12]<=qd[11];
    seed[13]<=qd[12];
    seed[14]<=qd[13];
    seed[15]<=qd[14];
end
else
    seed[15:0]=seed1[15:0];

assign out={qd,out1};


    
        
        
endmodule

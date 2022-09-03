`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2022 22:32:55
// Design Name: 
// Module Name: extended_eucli
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
(* keep="TRUE" *)
module extended_eucli(a,p,clk,out,reset);
input [7:0] a,p;
input clk,reset;
output [15:0]out;

reg [7:0] A_add,B_add;
reg [7:0] A,B;
reg [7:0] u,v;

always@(posedge clk)
if(reset) begin
    A<=8'b00000001;
    B<=8'b00000000;
    u<=a;
    v<=p;
    //$display("%b%b",a,p);
end
else begin
    //$display("%b%b",u[0],v[0]);
    while (u[0]==0) begin
        u<=u>>1;
        //$display("hii%b",u);
        if(A[0]==0) begin
            A<=A>>1;
        end
        else begin
            A_add<=A^p;
            A<=A_add>>1;
        end
    while (v[0]==0) begin
        $display("hii%b",v);
        v<=v>>1;
        $display("hii%b",v);
        if(B[0]==0) begin
            B<=B>>1;
        end
        else begin
            B_add<=B^p;
            B<=B_add>>1;
        end
        end
    if(u>=v) begin
            u<=u^v;
            A<=A^B;
        end
    else if(u<v)
        begin
            //$display("hii%b",B);
            v<=u^v;
            B<=B^A;
            //$display("hii%b",u);
        end
end
end

assign out={u,v};
//assign out1={A,B};

endmodule
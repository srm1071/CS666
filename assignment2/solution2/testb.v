`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2022 23:43:21
// Design Name: 
// Module Name: testb
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


module testb();
reg [7:0] a,p;
reg clk,reset;
wire [15:0] out;
    
    
initial begin 
forever begin
#1 clk = ~clk;
end end
  
extended_eucli E(.a(a),.p(p),.clk(clk),.out(out),.reset(reset));

initial begin
#1 clk=0;
#1 reset=1;
#1 a=8'b00110110;
#1 p=8'b11111111;
#1 reset=0;
$monitor("out=%b",out);
if (out[15:8]==8'b00000001)
begin
    $display("output=%b",out);
    $finish;
end
else if (out[7:0]==8'b00000001) begin
    $display("output=%b",out);
    $finish;
end

end
    
endmodule

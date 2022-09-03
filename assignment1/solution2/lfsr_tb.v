`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2016 06:22:54 PM
// Design Name: 
// Module Name: enable_sr_tb
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




module lfsr_tb();

    reg [15:0] seed;
    reg reset;
    reg clk,start;
    reg [31:0]count=0;
    reg [15:0]out2=0;

    wire [15:0] out;
    integer f;
    
    initial begin 
    forever begin
    #1 clk = ~clk;
    end end
    
    initial begin
        f = $fopen("output2.txt","w");
    end

	lfsr uut (
	    .start(start),
		.seed1(seed),
		.clk(clk),
		.reset(reset),
		.out(out)
	);


   //Generate error checking and have pass or fail condition	
   initial
   begin
    start=0;
    seed=16'b1010110011100001;
    clk=0;
    reset=0;
    #4 start=1;
    #2;
	end
    always@(posedge clk)
    begin
    if(out==16'b1000011100110101 && count>4) begin
        reset=1;
        $monitor("count=%d out=%b",count,out);
        $finish;
        $fwrite(f,"%d\n",out);
    end
    end
    always@(posedge clk)
    begin
    if(out2!=out) begin
        count=count+1;
        $display("count=%d out=%b",count,out);
        $fwrite(f,"%b\n",out);
        out2=out;
        end
    end
    
//65535
endmodule
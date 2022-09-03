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


module adder8_tb();

    reg [0:7]data0,data1;
    reg mode;
    wire [0:7]sum;
    wire final_carry_out,overflow;
	integer f;

	adder8 uut (
		.data0(data0),
		.data1(data1),
		.mode(mode),
		.sum(sum),
		.final_carry_out(final_carry_out),
		.overflow(overflow)
	);

	initial begin
        f = $fopen("output1.txt","w");
    end

   //Generate error checking and have pass or fail condition	
   initial
   begin
	   #1 mode=1'b1;
	   #1 data0=8'b10000001;
	   #1 data1=8'b11111111;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	   #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b1;
	   #1 data0=8'b00000010;
	   #1 data1=8'b11111110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	   #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b1;
	   #1 data0=8'b10000111;
	   #1 data1=8'b01010110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b1;
	   #1 data0=8'b10000001;
	   #1 data1=8'b01111110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5
	   #1 mode=1'b1;
	   #1 data0=8'b00110001;
	   #1 data1=8'b00111111;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b1;
	   #1 data0=8'b11110010;
	   #1 data1=8'b10100010;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b1;
	   #1 data0=8'b10001111;
	   #1 data1=8'b01110110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b1;
	   #1 data0=8'b11111111;
	   #1 data1=8'b01111110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);

	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b11111111;
	   #1 data1=8'b01111110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b11111000;
	   #1 data1=8'b00011110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b10000001;
	   #1 data1=8'b01111000;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b11111001;
	   #1 data1=8'b01011000;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b10011001;
	   #1 data1=8'b01011000;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b00000001;
	   #1 data1=8'b01011111;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5
	   #1 mode=1'b0;
	   #1 data0=8'b11000000;
	   #1 data1=8'b10111110;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);
	   #5;
	   #1 mode=1'b0;
	   #1 data0=8'b11111101;
	   #1 data1=8'b01111010;
	   #1 $display("Input1=%b, Input2=%b, sum=%b, overflow=%b",data0,data1,sum, overflow);
	    #1 $fwrite(f,"Input1=%b, Input2=%b, sum=%b, overflow=%b\n",data0,data1,sum, overflow);

	   
	end

endmodule

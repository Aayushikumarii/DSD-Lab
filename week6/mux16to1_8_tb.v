`timescale 1ns/1ns
`include "mux16to1_8.v"
module mux16to1_8_tb();
reg [15:0]w;
reg [3:0]s;
wire f;
mux16to1_8 ques3(w,s,f);
initial
begin
	$dumpfile("mux16to1_8_tb.vcd");
	$dumpvars(0,mux16to1_8_tb);
	s=0;w=30;
	#20;
	s=1;w=30;
	#20;
	s=2;w=30;
	#20;
	s=3;w=30;
	#20;
	s=4;w=30;
	#20;
	s=5;w=30;
	#20;
	s=6;w=30;
	#20;
	s=7;w=30;
	#20;
	s=8;w=30;
	#20;
	s=9;w=30;
	#20;
	s=10;w=30;
	#20;
	s=11;w=30;
	#20;
	s=12;w=30;
	#20;
	s=13;w=30;
	#20;
	s=14;w=30;
	#20;
	s=15;w=30;
	#20;
	$display("test complete");
	end
endmodule

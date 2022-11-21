`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg [3:0]g;
wire [3:0]b;

q2 ques2(g,b);
initial
begin
	$dumpfile("q2_tb.vcd");
	$dumpvars(0,q2_tb);
	g=4'b0001; 
	#20;
	g=4'b0101; 
	#20;
	g=4'b0010; 
	#20;
	$display("Test complete");
	end
endmodule
	

`timescale 1ns/1ns
`include "q4.v"
module q4_tb();
reg x0,x1,x2,x3,y0,y1,y2,y3;
wire G,L,E;
q4 que4(x0,x1,x2,x3,y0,y1,y2,y3,G,L,E);
initial
begin
	$dumpfile("q4_tb.vcd");
	$dumpvars(0,q4_tb);
	x3=1'b0; x2=1'b0; x1=1'b0; x0=1'b0;
	y3=1'b0; y2=1'b0; y1=1'b0; y0=1'b0;
	#20;
	x3=1'b0; x2=1'b1; x1=1'b0; x0=1'b0;
	y3=1'b0; y2=1'b0; y1=1'b1; y0=1'b0;
	#20;
	x3=1'b0; x2=1'b1; x1=1'b0; x0=1'b1;
	y3=1'b0; y2=1'b1; y1=1'b1; y0=1'b0;
	#20;
	$display("Test complete");
	end
endmodule

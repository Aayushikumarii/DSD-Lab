`timescale 1ns/1ns
`include "dec2to4.v"

module dec2to4_tb();
reg [1:0]D;
reg En;
wire [0:3]Y;

dec2to4 ex1(D,En,Y);
initial
begin
	$dumpfile("dec2to4_tb.vcd");
	$dumpvars(0,dec2to4_tb);
	D=0;En=1'b1;
	#20;
	
	D=1;En=1'b1;
	#20;
	
	D=2;En=1'b1;
	#20;
	
	D=3;En=1'b1;
	#20;
	
	D=1;En=1'b0;
	#20;
	
	$display("Test complete");
end
endmodule

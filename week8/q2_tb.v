`timescale 1ns/1ns
`include "q2.v"

module q2_tb();
reg [3:0]D;
reg En;
wire [0:15]Y;

q2 ex1(D,En,Y);
initial
begin
	$dumpfile("q2_tb.vcd");
	$dumpvars(0,q2_tb);
	D=0;En=1'b1; 
	#20;
	
	D=1;En=1'b1; 
	#20;
	
	D=2;En=1'b1; 
	#20;
	
	D=3;En=1'b1; 
	#20;
	
	D=4;En=1'b1; 
	#20;
	
	D=5;En=1'b1;
	#20;
	
	D=6;En=1'b1;
	#20;
	
	D=7;En=1'b1;
	#20;
	
	D=8;En=1'b1; 
	#20;
	
	D=9;En=1'b1; 
	#20;
	
	D=10;En=1'b1; 
	#20;
	
	D=11;En=1'b1; 
	#20;
	
	D=12;En=1'b1; 
	#20;
	
	D=13;En=1'b1;
	#20;
	
	D=14;En=1'b1;
	#20;
	
	D=15;En=1'b1;
	#20;
	
	D=15;En=1'b0;
	#20;
	
	$display("Test complete");
end
endmodule

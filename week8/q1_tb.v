`timescale 1ns/1ns
`include "q1.v"

module q1_tb();
reg [2:0]D;
reg En;
wire [0:7]Y;

q1 ex1(D,En,Y);
initial
begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0,q1_tb);
	D=3'b000;En=1'b1; 
	#20;
	
	D=3'b001;En=1'b1; 
	#20;
	
	D=3'b010;En=1'b1; 
	#20;
	
	D=3'b011;En=1'b1; 
	#20;
	
	D=3'b100;En=1'b1; 
	#20;
	
	D=3'b101;En=1'b1;
	#20;
	
	D=3'b110;En=1'b1;
	#20;
	
	D=3'b111;En=1'b1;
	#20;
	
	D=3'b111;En=1'b0;
	#20;
	
	$display("Test complete");
end
endmodule

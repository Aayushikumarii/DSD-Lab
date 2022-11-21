`timescale 1ns/1ns
`include "q3.v"

module q3_tb();
reg B0,B1,B2,B3;
wire E0,E1,E2,E3;

q3 ex1(B0,B1,B2,B3,E0,E1,E2,E3);
initial
begin
	$dumpfile("q3_tb.vcd");
	$dumpvars(0,q3_tb);
	B0=1'b0; B1=1'b0; B2=1'b0; B3=1'b0;
	#20;
	
	B0=1'b1; B1=1'b0; B2=1'b0; B3=1'b0;
	#20;
	
	B0=1'b0; B1=1'b1; B2=1'b0; B3=1'b0;
	#20;
	
	B0=1'b1; B1=1'b1; B2=1'b0; B3=1'b0;
	#20;
	
	B0=1'b0; B1=1'b0; B2=1'b1; B3=1'b0;
	#20;
	
	B0=1'b1; B1=1'b0; B2=1'b1; B3=1'b0;
	#20;
	
	B0=1'b0; B1=1'b1; B2=1'b1; B3=1'b0;
	#20;
	
	B0=1'b1; B1=1'b1; B2=1'b1; B3=1'b0;
	#20;
	
	B0=1'b0; B1=1'b0; B2=1'b0; B3=1'b1;
	#20;
	
	B0=1'b1; B1=1'b0; B2=1'b0; B3=1'b1;
	#20;
	
	$display("Test complete");
end
endmodule
	
	
	

module flipflopT(T,Clock,reset,Q);
	input T,reset,Clock;
	output reg Q;
	always@(negedge reset or posedge Clock)
	begin
		if(!reset)
			Q <= 0;
		else
		begin
			if(T)
				Q <= ~Q;
			else
				Q <= Q;
		end
	end
endmodule

module counter2(Clk,reset1,Q);
	input Clk,reset1;
	output [1:0]Q;
	flipflopT stage0(1'b1,Clk,reset1,Q[0]);
	flipflopT stage1(Q[0],Clk,reset1,Q[1]);
endmodule

module dec2to4(D,En,Y);
	input [1:0]D;
	input En;
	output reg [3:0]Y;
	wire [3:0]i;
	
	assign i={En,D};
	always@(i)
	begin
		if(i==3'b100)
			Y=4'b0001;
		else if(i==3'b101)
			Y=4'b010;
		else if(i==3'b110)
			Y=4'b0100;
		else if(i==3'b111)
			Y=4'b1000;
		else
			Y=4'b0000;
	end
endmodule

module q1(Clock,reset,Q);
	input Clock,reset;
	output [3:0]Q;
	wire [1:0]intermediate;
	
	counter2 stage0(Clock,reset,intermediate);
	dec2to4 stage1(intermediate,1'b1,Q); 
endmodule
	
	

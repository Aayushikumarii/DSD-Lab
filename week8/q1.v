module dec2to4(D,En,Y);
	input [1:0]D;
	input En;
	output [0:3]Y;
	wire [2:0]i;
	reg [0:3]Y;
	
	assign i={En,D};
	always@(D or En)
	begin
		if(i==3'b100)
			Y=4'b1000;
		else if(i==3'b101)
			Y=4'b0100;
		else if(i==3'b110)
			Y=4'b0010;
		else if(i==3'b111)
			Y=4'b0001;
		else
			Y=4'b0000;
	end
endmodule

module q1(D,En,Y);
	input [2:0]D;
	input En;
	output [0:7]Y;
	wire g,h,i;
	assign g=~D[2];
	assign h=g&En;
	assign i=D[2]&En;
	dec2to4 stage0(D[1:0],h,Y[0:3]);
	dec2to4 stage1(D[1:0],i,Y[4:7]);
endmodule

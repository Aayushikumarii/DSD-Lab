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

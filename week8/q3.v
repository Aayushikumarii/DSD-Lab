module dec2to4(D,En,Y);
	input [1:0]D;
	input En;
	output reg [0:3]Y;
	always@(D,En)
	begin
		case({En,D})
			3'b100:Y=4'b0111;
			3'b101:Y=4'b1011;
			3'b110:Y=4'b1101;
			3'b111:Y=4'b1110;
			default:Y=4'b1111;
		endcase
	end
endmodule

module q3(D,En,Y);
	input [3:0]D;
	input En;
	output [0:15]Y;
	wire [0:3]M;
	dec2to4 stage0(D[3:2],En,M);
	dec2to4 stage1(D[1:0],~M[0],Y[0:3]);
	dec2to4 stage2(D[1:0],~M[1],Y[4:7]);
	dec2to4 stage3(D[1:0],~M[2],Y[8:11]);
	dec2to4 stage4(D[1:0],~M[3],Y[12:15]);
endmodule
	

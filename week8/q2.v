module dec3to8(D,En,Y);
	input [2:0]D;
	input En;
	output reg [0:7]Y;
	integer i;
	always@(D or En)
	begin
		for(i=0;i<=7;i=i+1)
		begin
			if(D==i&&En==1'b1)
				Y[i]=1'b1;
			else
				Y[i]=1'b0;
		end
	end
endmodule

module q2(D,En,Y);
	input [3:0]D;
	input En;
	output [0:15]Y;
	wire g,h;
	assign g=~D[3]&En;
	assign h=D[3]&En;
	
	dec3to8 stage0(D[2:0],g,Y[0:7]);
	dec3to8 stage1(D[2:0],h,Y[8:15]);
endmodule

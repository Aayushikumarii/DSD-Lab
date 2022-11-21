module mux4to1(w,s,f);
	input [3:0]w;
	input [1:0]s;
	output reg f;
	always@(w or s)
	begin
		f=s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
	end
endmodule

module ques1b(a,b,c,d,g);
	input a,b,c,d;
	output g;
	wire [3:0]w;
	wire [1:0]s;
	wire j;
	assign j=c|(~d);
	assign s={a,b};
	assign w={1'b0,1'b0,d,j};
	mux4to1 stage0(w,s,g);
endmodule

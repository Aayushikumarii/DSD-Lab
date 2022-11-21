module c2(a0,a1,b0,b1,g,l,e);
	input a0,a1,b0,b1;
	output g,l,e;
	assign g = (a1&(~b1))|(a1~^b1)&(a0&(~b0));
	assign l = ((~a1)&b1)|(a1~^b1)&((~a0)&b0);
	assign e = (a1~^b1)&(a0~^b0);
endmodule

module q4(x0,x1,x2,x3,y0,y1,y2,y3,G,L,E);
	input x0,x1,x2,x3,y0,y1,y2,y3;
	output G,L,E;
	wire g0,g1,l0,l1,e0,e1;
	c2 stage0(x2,x3,y2,y3,g1,l1,e1);
	c2 stage1(x0,x1,y0,y1,g0,l0,e0);
	assign G = (g1)|(e1&g0);
	assign L = (l1)|(e1&l0);
	assign E = e0&e1;
endmodule

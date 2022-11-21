module q1(a,b,agb,alb,aeb);
	input [4:0]a,b;
	output agb,alb,aeb;
	wire [4:0]i;
	wire m,n,o,p,q;
	assign i[4]=a[4]~^b[4];
	assign i[3]=a[3]~^b[3];
	assign i[2]=a[2]~^b[2];
	assign i[1]=a[1]~^b[1];
	assign i[0]=a[0]~^b[0];
	assign m=(a[4]&(~(b[4])));
	assign n=(i[4]&a[3]&(~(b[3])));
	assign o=(i[4]&i[3]&a[2]&(~(b[2])));
	assign p=(i[4]&i[3]&i[2]&a[1]&(~(b[1])));
	assign q=(i[4]&i[3]&i[2]&i[1]&a[0]&(~(b[0])));
	assign agb=(m|n|o|p|q);
	assign aeb=i[4]&i[3]&i[2]&i[1]&i[0];
	assign alb=(~(agb|aeb));
endmodule
	

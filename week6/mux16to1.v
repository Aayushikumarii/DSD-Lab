module mux4to1(w,s,f);
input [3:0]w;
input [1:0]s;
output f;
assign f=s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
endmodule

module mux16to1(w,s,f);
input [15:0]w;
input [3:0]s;
output f;
wire [3:0]i;
mux4to1 stg0(w[3:0],s[1:0],i[0]);
mux4to1 stg1(w[7:4],s[1:0],i[1]);
mux4to1 stg2(w[11:8],s[1:0],i[2]);
mux4to1 stg3(w[15:12],s[1:0],i[3]);
mux4to1 stg4(i[3:0],s[3:2],f);
endmodule

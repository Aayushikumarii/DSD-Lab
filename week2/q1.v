module q1(a,b,c,d, f);
input a,b,c,d;
output f;
assign f = (b & ~c & ~d) | (~b & c) | (~a & b) | (c & d);
endmodule                                                                                                                                                                                                                 

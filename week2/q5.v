module q5(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = (b | c | d) & (a | c | d ) & ( a | b | d) & ( a | b | c);
endmodule                                                                                                                                                                                                                 

module q3(a,b,c,d,f);
input a,b,c,d;
output f;
//assign f = (~B & ~D) | (~A & ~C & D) | (~B & ~C);
    nor(g1, b, d);
    nor(g2, a, c, ~d);
    nor(g3, b, c);
    nor(h, g1, g2, g3);
    not(f, h);
endmodule                                                                                                                                                                                                                 

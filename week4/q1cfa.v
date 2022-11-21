module q1ha(x, y, sum, c_out);
    input x, y;
    output sum, c_out;
    assign sum = x ^ y;
    assign c_out = (x & y);
endmodule

module q1cfa(a,b,c,cout,sum)
    input a,b,c;
    output sum,c_out;
    q1ha stage0(a,b,

module q1ha(x, y, sum, c_out);
    input x, y;
    output sum, c_out;
    assign sum = x ^ y;
    assign c_out = (x & y);
endmodule



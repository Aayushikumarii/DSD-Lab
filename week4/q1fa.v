module q1fa(c_in, x, y, sum, c_out);
    input c_in, x, y;
    output sum, c_out;
    assign sum = c_in ^ x ^ y;
    assign c_out = (x & y) | (y & c_in) | (c_in & x);
endmodule


module half_adder(x, y, sum, c_out);
    input x, y;
    output sum, c_out;
    assign sum = x ^ y;
    assign c_out = (x & y);
endmodule

module full_adder(c_in, x, y, sum, c_out);
    input c_in, x, y;
    output sum, c_out;
    assign sum = c_in ^ x ^ y;
    assign c_out = (x & y) | (y & c_in) | (c_in & x);
endmodule

module full_adder_decomposed(c_in, x, y, sum, c_out);
    input c_in, x, y;
    output sum, c_out;
    half_adder h1 (.x(x), .y(y), .sum(s1), .c_out(c1));
    half_adder h2 (.x(s1), .y(c_in), .sum(sum), .c_out(c2));
    or(c_out, c1, c2)
endmodule

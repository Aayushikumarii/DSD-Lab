`include "./#q1fa.v"

module adder4(c_in, x3, x2, x1, x0, y3, y2, y1, y0, sum3, sum2, sum1, sum0, c_out);
    input c_in, x3, x2, x1, x0, y3, y2, y1, y0;
    output sum3, sum2, sum1, sum0, c_out;

    // creating full adder objects
    q1fa bit0 (.c_in(c_in), .x(x0), .y(y0), .sum(sum0), .c_out(carry1));
    full_adder bit1 (.c_in(carry1), .x(x1), .y(y1), .sum(sum1), .c_out(carry2));
    full_adder bit2 (.c_in(carry2), .x(x2), .y(y2), .sum(sum2), .c_out(carry3));
    full_adder bit3 (.c_in(carry3), .x(x3), .y(y3), .sum(sum3), .c_out(c_out));
endmodule

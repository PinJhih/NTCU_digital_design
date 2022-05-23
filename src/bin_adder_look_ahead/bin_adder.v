`timescale 1ns / 1ps
module bin_adder(
    input [3:0]num1,
    input [3:0]num2,
    output [4:0]sum
    );

    wire t;
    wire [3:0]p;
    wire [3:0]g;
    wire [3:0]c;

    full_adder adder1(num1[3], num2[3], c[2], sum[3], p[3], g[3], sum[4]);
    full_adder adder2(num1[2], num2[2], c[1], sum[2], p[2], g[2], t);
    full_adder adder3(num1[1], num2[1], c[0], sum[1], p[1], g[1], t);
    full_adder adder4(num1[0], num2[0], 1'b0, sum[0], p[0], g[0], t);

    wire w0, w1;
    and(w0, g[0], p[1]);
    and(w1, w0, p[2]);

    wire w2;
    and(w2, g[1], p[2]);

    wire w3;
    or(w3, w1, w2);
    or(c[2], w3, g[2]);

    wire w4;
    and(w4, g[0], p[1]);
    or(c[1], w4, g[1]);

    buf(c[0], g[0]);

endmodule

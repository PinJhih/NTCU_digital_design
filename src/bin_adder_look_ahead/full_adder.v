module full_adder(input a,
                  input b,
                  input c_in,
                  output s,
                  output p,
                  output g,
                  output c_out);

    wire net;

    xor (p, a, b);
    and (g, a, b);
    xor (s, p, c_in);
    and (net, p, c_in);
    xor (c_out, g, net);

endmodule

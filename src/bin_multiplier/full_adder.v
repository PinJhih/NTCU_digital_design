module full_adder(input a,
                  input b,
                  input c_in,
                  output s,
                  output c_out);
    
    wire net1, net2, net3;
    
    xor (net1, a, b);
    and (net2, a, b);
    xor (s, net1, c_in);
    and (net3, net1, c_in);
    xor (c_out, net2, net3);
    
endmodule

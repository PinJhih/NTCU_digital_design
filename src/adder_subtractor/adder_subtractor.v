module adder_subtractor(input [3:0] num1,
               input [3:0] num2,
               input m,
               output [3:0] sum,
               output c_out,
               output overflow);

   wire c1, c2, c3;
   wire w0, w1, w2, w3;

   xor (w0, num2[0], m);
   xor (w1, num2[1], m);
   xor (w2, num2[2], m);
   xor (w3, num2[3], m);

   full_adder u1(num1[0], w0, m, sum[0], c1);
   full_adder u2(num1[1], w1, c1, sum[1], c2);
   full_adder u3(num1[2], w2, c2, sum[2], c3);
   full_adder u4(num1[3], w3, c3, sum[3], c_out);
   xor (overflow, c_out, c3);
   
endmodule

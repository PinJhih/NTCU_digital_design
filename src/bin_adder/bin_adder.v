module bin_adder(input [3:0] num1,
                   input [3:0] num2,
                   output [4:0] sum);

    wire c1, c2, c3;
   
   full_adder u1(num1[0], num2[0], 1'b0, sum[0], c1);
   full_adder u2(num1[1], num2[1], c1, sum[1], c2);
   full_adder u3(num1[2], num2[2], c2, sum[2], c3);
   full_adder u4(num1[3], num2[3], c3, sum[3], sum[4]);
    
   
endmodule

`timescale 1ns / 1ps
module Top();

	reg [3:0] A0, A1;
	reg [3:0] B0, B1;

    wire [3:0] s0, s1;
    wire c;

    initial begin
        A1 = 0;
        A0 = 2;
        B1 = 0;
        B0 = 5;
        #25
        A1 = 0;
        A0 = 7;
        B1 = 0;
        B0 = 3;
        #25
        A1 = 1;
        A0 = 7;
        B1 = 3;
        B0 = 3;
        #25
        A1 = 1;
        A0 = 7;
        B1 = 9;
        B0 = 3;
        #25
    $finish;
    end

    two_digit_adder adder(A1, A0, B1, B0, s1, s0, c);

endmodule

`timescale 1ns / 1ps
module Top();

	reg [3:0] num1;
	reg [3:0] num2;

    wire [3:0]product;

    initial begin
        num1 = 2'b00;
        num2 = 2'b00;
        #25
        num1 = 2'b01;
        num2 = 2'b01;
        #25
        num1 = 2'b10;
        num2 = 2'b11;
        #25
        num1 = 2'b00;
        num2 = 2'b01;
        #25
        num1 = 2'b11;
        num2 = 2'b11;
        #25
    $finish;
    end

    bin_multiplier multiplier(num1, num2, product);

endmodule

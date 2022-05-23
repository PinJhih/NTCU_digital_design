module Top();
    reg [3:0] num1;
    reg [3:0] num2;
    wire [4:0] sum;

    initial begin
        num1 = 4'b0000;
        num2 = 4'b0000;
        #25
        num1 = 4'b0011;
        num2 = 4'b0001;
        #25
        num1 = 4'b0011;
        num2 = 4'b1010;
        #25
        num1 = 4'b0001;
        num2 = 4'b1111;
        #25
        num1 = 4'b0010;
        num2 = 4'b1111;
        #25 $finish;
    end

    bin_adder adder(num1,num2, sum);

endmodule

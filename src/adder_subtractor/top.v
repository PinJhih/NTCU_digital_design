module Top();
    reg [3:0] num1;
    reg [3:0] num2;
    reg m;
    wire [3:0] sum;
    wire c_out, overflow;

    initial begin
        m = 0;
        num1 = 0;
        num2 = 0;
        #25
        num1 = 3;
        num2 = 5;
        #25
        num1 = 7;
        num2 = 1;
        m = 1;
        #25
        num1 = 4'b1000;
        num2 = 1;
        m = 1;
        #25 $finish;
    end

    adder u1(num1, num2, m, sum, c_out, overflow);

endmodule

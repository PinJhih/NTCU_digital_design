module Top();
    reg [3:0] num1;
    reg [3:0] num2;
    wire [4:0] sum;

    
    initial begin
        #25
        num1[0] = 0;
        num1[1] = 0;
        num1[2] = 0;
        num1[3] = 0;
        
        num2[0] = 0;
        num2[1] = 0;
        num2[2] = 0;
        num2[3] = 0;
        #25
        num1[0] = 1;
        num1[1] = 1;
        num1[2] = 0;
        num1[3] = 0;
        
        num2[0] = 1;
        num2[1] = 0;
        num2[2] = 1;
        num2[3] = 0;
        #25
        num1[0] = 0;
        num1[1] = 0;
        num1[2] = 1;
        num1[3] = 0;
        
        num2[0] = 1;
        num2[1] = 0;
        num2[2] = 1;
        num2[3] = 0;
        #25
        num1[0] = 1;
        num1[1] = 0;
        num1[2] = 0;
        num1[3] = 1;
        
        num2[0] = 1;
        num2[1] = 0;
        num2[2] = 0;
        num2[3] = 1;
        #25 $finish;
    end

    bin_adder adder(num1,num2, sum);

endmodule

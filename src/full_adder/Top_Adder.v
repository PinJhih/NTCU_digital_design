`timescale 1ns / 1ps

module Top();
    
    reg A,B,C;
    wire S,Cout;

    initial begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        #50
            A = 1'b1;
            B = 1'b0;
            C = 1'b0;
        #50
            A = 1'b0;
            B = 1'b1;
            C = 1'b0;
        #50
            A = 1'b1;
            B = 1'b1;
            C = 1'b0;
        #50
            A = 1'b0;
            B = 1'b0;
            C = 1'b1;
        #50
            A = 1'b1;
            B = 1'b0;
            C = 1'b1;
        #50
            A = 1'b0;
            B = 1'b1;
            C = 1'b1;
        #50
            A = 1'b1;
            B = 1'b1;
            C = 1'b1;
        #50 $finish;
    end

    full_adder u(A,B,C,S,Cout);

endmodule

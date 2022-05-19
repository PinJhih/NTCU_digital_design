`timescale 1ns / 1ps
module cmp_TB();

    reg [3:0]num1;
    reg [3:0]num2;
    wire gt, lt, eq;
  
    initial begin
        num1 = 4'b0000;
        num2 = 4'b0011;
        #25
        num1 = 4'b0100;
        num2 = 4'b0011;
        #25
        num1 = 4'b0111;
        num2 = 4'b0110;
        #25
        num1 = 4'b0111;
        num2 = 4'b0111;
        #25
    $finish;
    end

    cmp u1(num1,num2,lt,gt,eq);

endmodule

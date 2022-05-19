`timescale 1ns / 1ps

module cmp(
    input [3:0]num1,
    input [3:0]num2,
    output lt,
    output gt,
    output eq
    );
    
    wire w0,w1,w2;
    
    and(w0, ~num1[3], num2[3]);
    and(w1, num1[3], ~num2[3]);
    nor(w2, w0, w1);

    wire w3,w4,w5;
    
    and(w3, ~num1[2], num2[2]);
    and(w4, num1[2], ~num2[2]);
    nor(w5, w3, w4);
    
    wire w6,w7,w8;
    
    and(w6, ~num1[1], num2[1]);
    and(w7, num1[1], ~num2[1]);
    nor(w8, w6, w7);
    
    wire w9,w10,w11;
    
    and(w9, ~num1[0], num2[0]);
    and(w10, num1[0], ~num2[0]);
    nor(w11, w9, w10);
    
    wire w12,w13;
    
    and(w12,w2,w5);
    and(w13,w8,w11);
    and(eq,w12,w13);
    
    wire w14,w15,w16;
    
    and(w14,w2,w3);
    and(w15,w2,w5);
    and(w16,w15,w6);
    
    wire w17, w18;
    and(w17, w8, w9);
    and(w18,w15,w17);
    
    wire w19,w20;
    or(w19,w0,w14);
    or(w20,w16,w18);
    or(lt,w19,w20);
    
    wire w21;
    and(w21,w2,w4);
    
    wire w22,w23;
    and(w22,w5,w2);
    and(w23,w22,w7);
    
    wire w24,w25,w26;
    and(w24,w2,w5);
    and(w25,w10,w8);
    and(w26,w24,w25);
    
    wire w27,w28;
    or(w27,w1,w21);
    or(w28,w23,w26);
    or(gt,w27,w28);

    
endmodule

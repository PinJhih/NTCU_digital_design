`timescale 1ns / 1ps
module div2(input clkin,
            input rst_n,
            output reg clkout = 0);
    
    parameter Divider_Counter = 250000;
    
    reg [24:0] Counter = 0;
    
    always@(posedge clkin or negedge rst_n)begin
        if (!rst_n) begin
            Counter <= 0;
            end else begin
            if (Counter == (Divider_Counter - 1))
                Counter <= 0;
            else
                Counter <= Counter + 1;
        end
    end
    
    always@(posedge clkin or negedge rst_n) begin
        if (!rst_n) begin
            clkout <= 0;
            end else begin
            if (Counter < Divider_Counter / 2)
                Counter <= 1'b0;
            else
                Counter <= 1'b1;
        end
    end
endmodule

`timescale 1ns / 10ps
module Top_Led(input sys_clk_in,
               input sys_rst_n,
               output [7:0] led);
    
    wire clock;
    reg [7:0] led_show = 8'b00000001;
    
    div2 d(sys_clk_in, sys_rst_n, clock);
    
    always@(posedge clock or negedge sys_rst_n)begin
        if (!sys_rst_n)
            led_show <= 8'b00000000;
        else begin
            case(led_show[7])
                1'b0:
                led_show <= led_show << 1;
                1'b1:
                led_show <= 8'b00000001;
                default	:
                led_show <= 8'b00000000;
            endcase
        end
    end
    
    assign led = led_show;
    
endmodule

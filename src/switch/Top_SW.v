module Top(input sys_clk_in,
           input sys_rst_n,
           input [7:0] sw,
           input [7:0] dip_pin,
           output [15:0] led);
    
    
    switch_gpio u1 (sw, dip_pin, led);
    
    
endmodule

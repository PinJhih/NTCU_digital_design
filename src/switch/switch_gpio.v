`timescale 1ns / 1ps

module switch_gpio(sw_pin,
                   dip_pin,
                   led_pin);
    
    input [7:0] sw_pin,dip_pin;
    output [15:0] led_pin;
    
    assign led_pin = {dip_pin,sw_pin};
    
    
endmodule

`timescale 1ns / 10ps
module Top(
    input [3:0]sw,
    output [3:0]led
);

    sw_to_ex3 encoder(sw, led);

endmodule

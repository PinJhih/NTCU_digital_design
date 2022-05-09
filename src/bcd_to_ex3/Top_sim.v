`timescale 1ns / 10ps
module Top();

    reg [3:0]bcd;
    wire [3:0]ex3;

    initial begin
        bcd[3] = 1'b0;
        bcd[2] = 1'b0;
        bcd[1] = 1'b0;
        bcd[0] = 1'b0;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b0;
        bcd[1] = 1'b0;
        bcd[0] = 1'b1;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b0;
        bcd[1] = 1'b1;
        bcd[0] = 1'b0;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b0;
        bcd[1] = 1'b1;
        bcd[0] = 1'b1;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b1;
        bcd[1] = 1'b0;
        bcd[0] = 1'b0;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b1;
        bcd[1] = 1'b0;
        bcd[0] = 1'b1;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b1;
        bcd[1] = 1'b1;
        bcd[0] = 1'b0;
        #25
        bcd[3] = 1'b0;
        bcd[2] = 1'b1;
        bcd[1] = 1'b1;
        bcd[0] = 1'b1;
        #25
        bcd[3] = 1'b1;
        bcd[2] = 1'b0;
        bcd[1] = 1'b0;
        bcd[0] = 1'b0;
        #25
        bcd[3] = 1'b1;
        bcd[2] = 1'b0;
        bcd[1] = 1'b0;
        bcd[0] = 1'b1;
        #25 $finish;
    end

    bcd_to_ex3 encoder(bcd, ex3);
    // bcd_to_ex3 encoder({bcd[3],bcd[2],bcd[1],bcd[0]}, {ex3[3],ex3[2],ex3[1],ex3[0]}); 也可以

endmodule

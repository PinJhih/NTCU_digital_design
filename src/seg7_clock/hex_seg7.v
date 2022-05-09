module hex_seg7 (hex,
                 seg_data);
    input [4:0] hex;
    output reg [7:0] seg_data;
    
    // hex to SEG7 codes, default is a bar
    always@ (hex)begin
        case (hex)
            5'b0_0000 : seg_data = ~(8'b1100_0000);
            5'b0_0001 : seg_data = ~(8'b1111_1001);
            5'b0_0010 : seg_data = ~(8'b1010_0100);
            5'b0_0011 : seg_data = ~(8'b1011_0000);
            5'b0_0100 : seg_data = ~(8'b1001_1001);
            5'b0_0101 : seg_data = ~(8'b1001_0010);
            5'b0_0110 : seg_data = ~(8'b1000_0010);
            5'b0_0111 : seg_data = ~(8'b1111_1000);
            5'b0_1000 : seg_data = ~(8'b1000_0000);
            5'b0_1001 : seg_data = ~(8'b1001_0000);
            5'b0_1010 : seg_data = ~(8'b1000_1000);
            5'b0_1011 : seg_data = ~(8'b1000_0011);
            5'b0_1100 : seg_data = ~(8'b1100_0110);
            5'b0_1101 : seg_data = ~(8'b1010_0001);
            5'b0_1110 : seg_data = ~(8'b1000_0110);
            5'b0_1111 : seg_data = ~(8'b1000_1110);
            default : seg_data   = ~(8'b1011_1111);
        endcase
    end
endmodule

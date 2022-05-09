module Seg_Display(input Scan_clk,
                   input clk,
                   input rtsn,
                   input [15:0] Data,
                   output reg [7:0] Seg7_show,
                   output [7:0] seg_data_0,
                   output [7:0] seg_data_1);
    
    reg [2:0] state ;
    reg [4:0] number;
    
    parameter Symbol = 5'b1_0000 ;
    
    reg [3:0] Number5 ;
    reg [3:0] Number4 ;
    reg [3:0] Number3 ;
    reg [3:0] Number2 ;
    reg [3:0] Number1 ;
    reg [3:0] Number0 ;
    
    //seg7 data scan 4 numbers
    always@(posedge Scan_clk or negedge rtsn)begin
        if (!rtsn) begin
            Seg7_show <= 8'b11111111;
            state     <= 0;
            end else begin
            if (state < 8)
                state <= state + 1;
            else
                state = 0;
                case(state)
                    4'd0:
                    begin
                        Seg7_show <= 8'b1000_0000;
                        number    <= {0,Number0};
                    end
                    4'd1:
                    begin
                        Seg7_show <= 8'b0100_0000;
                        number    <= {0,Number1};
                    end
                    4'd2:
                    begin
                        Seg7_show <= 8'b0010_0000;
                        number    <= Symbol;
                    end
                    4'd3:
                    begin
                        Seg7_show <= 8'b0001_0000;
                        number    <= {0,Number2};
                    end
                    4'd4:
                    begin
                        Seg7_show <= 8'b0000_1000;
                        number    <= {0,Number3};
                    end
                    4'd5:
                    begin
                        Seg7_show <= 8'b0000_0100;
                        number    <= Symbol;
                    end
                    4'd6:
                    begin
                        Seg7_show <= 8'b000_0010;
                        number    <= {0,Number4};
                    end
                    4'd7:
                    begin
                        Seg7_show <= 8'b000_0001;
                        number    <= {0,Number5};
                    end
                    default:
                    begin
                        Seg7_show <= 8'b11111111;
                        number    <= Symbol;
                    end
                endcase
        end
    end
    
    //BCD display decoder 0000~0999 mapping to 4 numbers
    always@(Data)begin
        Number5 = Data / 60 / 60 % 60 / 10;
        Number4 = Data / 60 / 60 % 60 % 10;
        Number3 = Data / 60  % 60 / 10;
        Number2 = Data / 60  % 60 % 10;
        Number1 = Data % 60 / 10;
        Number0 = Data % 60 % 10;
    end
    
    // seg7 decoder
    hex_seg7 u2(
    .hex(number),
    .seg_data(seg_data_0)
    );
    hex_seg7 u3(
    .hex(number),
    .seg_data(seg_data_1)
    );
    
endmodule

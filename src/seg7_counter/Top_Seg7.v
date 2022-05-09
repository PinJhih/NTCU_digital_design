module Top(input sys_clk_in,
           input sys_rst_n,
           output [7:0] seg_cs,
           output [7:0] seg_data_0,
           output [7:0] seg_data_1);
    
    wire clkout_1HZ;
    wire clkout_1kHZ;
    wire [3:0] CountNumber;
    
    Divider_Clock #(
    .Custom_Outputclk_0(),
    .Custom_Outputclk_1(),
    .Custom_Outputclk_2()
    )u_Divider_Clock(
    .clkin(sys_clk_in),
    .rst_n(sys_rst_n),
    .clkout_1K(clkout_1kHZ),
    .clkout_100(),
    .clkout_10(),
    .clkout_1(clkout_1HZ),
    .clkout_Custom_0(),
    .clkout_Custom_1(),
    .clkout_Custom_2()
    );
    
    reg [15:0] Data;
    // counter 0~999 for 1hz
    always@(posedge clkout_1HZ or negedge sys_rst_n)begin
        if (!sys_rst_n)
            Data <= 0;
        else begin
            if (Data == 999)
                Data <= 0;
            else
                Data <= Data + 1;
        end
    end
    
    //display Data to Seg7
    Seg_Display u_Seg_Display(
    .Scan_clk(clkout_1kHZ),
    .clk(clkout_1kHZ),
    .rtsn(sys_rst_n),
    .Data(Data),
    .Seg7_show(seg_cs),
    .seg_data_0(seg_data_0),
    .seg_data_1(seg_data_1)
    );
endmodule

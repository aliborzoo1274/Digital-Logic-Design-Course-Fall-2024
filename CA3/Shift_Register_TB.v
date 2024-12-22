`timescale 1ns/1ns
module shift_register_24_tb();
    reg Ser_In, Par_load, shift_en, rst, clk;
    reg [23:0] Par_In;
    wire [23:0] Par_out;
    wire Ser_Out;

    shift_register_24 UT (
        .Ser_In(Ser_In),
        .Par_In(Par_In),
        .Par_load(Par_load),
        .shift_en(shift_en),
        .rst(rst),
        .clk(clk),
        .Par_out(Par_out),
        .Ser_Out(Ser_Out)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        Ser_In = 1'b0;
        Par_In = 24'hA5A5A5;
        Par_load = 1'b0;
        shift_en = 1'b0;
        rst = 1'b1;
        #10 rst = 1'b0;

        Par_load = 1'b1;
        #10 Par_load = 1'b0;

        shift_en = 1'b1;
        Ser_In = 1'b1;
        #50;

        Ser_In = 1'b0;
        #50;

        rst = 1'b1;
        #10 rst = 1'b0;

        $stop;
    end
endmodule


module shift_register_80_tb();
    reg Ser_In, Par_load, shift_en, rst, clk;
    reg [79:0] Par_In;
    wire [79:0] Par_out;
    wire Ser_Out;

    shift_register_80 UT (
        .Ser_In(Ser_In),
        .Par_In(Par_In),
        .Par_load(Par_load),
        .shift_en(shift_en),
        .rst(rst),
        .clk(clk),
        .Par_out(Par_out),
        .Ser_Out(Ser_Out)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    initial begin
        Ser_In = 1'b0;
        Par_In = 80'h123456789ABCDEF01234;
        Par_load = 1'b0;
        shift_en = 1'b0;
        rst = 1'b1;
        #10 rst = 1'b0;

        Par_load = 1'b1;
        #10 Par_load = 1'b0;

        shift_en = 1'b1;
        Ser_In = 1'b1;
        #100;

        Ser_In = 1'b0;
        #100;

        rst = 1'b1;
        #10 rst = 1'b0;

        $stop;
    end
endmodule
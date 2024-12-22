`timescale 1ns/1ns
module lfsr_tb();
    reg clk;
    reg rst;
    reg shift_en;
    reg Par_load;
    reg [79:0] Seed;
    wire [79:0] Par_out;
    wire Ser_out;

    lfsr uut (
        .clk(clk),
        .rst(rst),
        .shift_en(shift_en),
        .Par_load(Par_load),
        .Seed(Seed),
        .Par_out(Par_out),
        .Ser_out(Ser_out)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1'b0;
        shift_en = 1'b0;
        Par_load = 1'b0;
        Seed = 80'h123456789ABCDEF01234;
        #10;

        rst = 1'b1;
        #10;
        rst = 1'b0;
        #10;

        Par_load = 1'b1;
        #10;
        Par_load = 1'b0;

        shift_en = 1'b1;
        #100;

        shift_en = 1'b0;
        #20;

        shift_en = 1'b1;
        #50;

        $stop;
    end
endmodule
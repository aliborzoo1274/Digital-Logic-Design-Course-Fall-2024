`timescale 1ns/1ns
module lfsr_tb2();
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
        rst = 1'b1;
        shift_en = 1'b0;
        Par_load = 1'b0;
        Seed = 80'habcdef012345abcdef67;
        #5;

        rst = 1'b0;
        Par_load = 1'b1;
        #5;

        Par_load = 1'b0;
        shift_en = 1'b1;
        #90;

        $stop;
    end
endmodule
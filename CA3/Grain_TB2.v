`timescale 1ns/1ns
module grain_tb2();
    reg clk;
    reg rst;
    reg shift_en;
    reg Par_load;
    reg [104:0] Seed;
    wire out;
    wire [79:0]out_l;
    wire [23:0]out_n;

    grain uut (
        .clk(clk),
        .rst(rst),
        .shift_en(shift_en),
        .Par_load(Par_load),
        .Seed(Seed),
        .out(out),
        .out_l(out_l),
        .out_n(out_n)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1'b1;
        shift_en = 1'b0;
        Par_load = 1'b0;
        Seed = 104'habcdef123abc12345ab6789cde;
        #5;

        rst = 1'b0;
        Par_load = 1'b1;
        #5;

        Par_load = 1'b0;
        shift_en = 1'b1;
        #310;

        $stop;
    end
endmodule
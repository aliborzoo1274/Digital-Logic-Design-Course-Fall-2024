`timescale 1ns/1ns
module grain_tb();
    reg clk;
    reg rst;
    reg shift_en;
    reg Par_load;
    reg [104:0] Seed;
    wire out;

    grain uut (
        .clk(clk),
        .rst(rst),
        .shift_en(shift_en),
        .Par_load(Par_load),
        .Seed(Seed),
        .out(out)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1'b0;
        shift_en = 1'b0;
        Par_load = 1'b0;
        Seed = 104'h123456789ABCDEF012346789AB;
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
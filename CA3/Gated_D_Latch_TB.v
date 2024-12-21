`timescale 1ns/1ns
module gated_d_latch_tb();
    reg D, Clock, en, rst;
    wire Q, Qb;

    gated_d_latch UT (D, Clock, en, rst, Q, Qb);

    initial begin
        Clock = 1'b0;
        forever #5 Clock = ~Clock;
    end

    initial begin
        D = 1'b1;
        en = 1'b1;
        rst = 1'b0;
        #5;

        D = 1'b0;
        en = 1'b0;
        rst = 1'b0;
        #5;

        D = 1'b0;
        en = 1'b1;
        rst = 1'b0;
        #5;

        D = 1'b1;
        en = 1'b1;
        rst = 1'b0;
        #5;

        D = 1'b1;
        en = 1'b1;
        rst = 1'b1;
        #5;

        $finish;
    end
endmodule
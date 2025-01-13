`timescale 1ns/1ns
module main_module_tb;
    reg clk;
    reg reset;
    reg start;
    reg [3:0] start_address;

    wire done;
    wire [15:0] out;

    main_module uut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .start_address(start_address),
        .done(done),
        .out(out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        start = 0;
        start_address = 4'b0000;

        #20;
        reset = 0;

        #10;
        start_address = 4'b0101;
        start = 1;

        #10;
        start = 0;

        #10;
        $stop;
    end

endmodule
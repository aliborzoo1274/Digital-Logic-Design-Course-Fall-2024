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

        #10;
        reset = 0;
        start = 1;
        start_address = 4'b0010;
        
        #20;
        start_address = 4'b0101;
        
        #100;
        start_address = 4'b0100;
        start = 0;
        
        #50;
        $stop;
    end

endmodule
`timescale 1ns/1ns

module determinant_calculator_tb;

    reg clk;
    reg reset;
    reg start;
    reg [3:0] start_address;
    reg [7:0] data_in;

    wire [3:0] address_to_memory;
    wire [15:0] out;
    wire done;

    determinant_calculator uut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .start_address(start_address),
        .data_in(data_in),
        .address_to_memory(address_to_memory),
        .out(out),
        .done(done)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        start = 0;
        start_address = 4'b1001;
        data_in = 8'b00110000;
        #10;

        reset = 0;
        start = 1;

        #150
        $stop;
    end

endmodule
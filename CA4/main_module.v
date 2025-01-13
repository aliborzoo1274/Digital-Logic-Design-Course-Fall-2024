module main_module(
    input clk,
    input reset,
    input start,
    input [3:0] start_address,
    output done,
    output [15:0] out
);

    wire [7:0] data_in;
    wire [3:0] address_to_memory;
    wire rom_done;

    ROM rom_inst (
        .addrBus(address_to_memory),
        .outBus(data_in)
    );

    determinant_calculator determinant_calculator_inst (
        .clk(clk),
        .reset(reset),
        .start(start),
        .start_address(start_address),
        .data_in(data_in),
        .out(out),
        .address_to_memory(address_to_memory),
        .done(done)
    );

endmodule
module determinant_calculator(
    input clk,
    input reset,
    input start,
    input [3:0] start_address,
    input [7:0] data_in,
    output [3:0] address_to_memory,
    output [15:0] out,
    output done
);

    wire rst, en_counter, sel;
    wire carry_out;

    controller controller_inst (
        .clk(clk),
        .start(start),
        .carry_out(carry_out),
        .rst(rst),
        .en_counter(en_counter),
        .sel(sel),
        .done(done)
    );

    datapath datapath_inst (
        .clk(clk),
        .rst(rst | reset),
        .sel(sel),
        .en_counter(en_counter),
        .start_address(start_address),
        .data_in(data_in),
        .out(out),
        .address_to_memory(address_to_memory),
        .carry_out(carry_out)
    );

endmodule
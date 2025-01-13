module datapath(
    input clk,
    input rst,
    input sel,
    input en_counter,
    input [3:0] start_address,
    input [7:0] data_in,
    output [15:0] out,
    output [3:0] address_to_memory,
    output carry_out
);

    wire [1:0] count_2bit;
    wire carry_out_4bit;
    wire [3:0] decoder_2to4_out;
    wire [7:0] reg_a_out, reg_b_out, reg_c_out, reg_d_out;
    wire [7:0] mux_out_1, mux_out_2;
    wire [1:0] decoder_1to2_out;
    wire [15:0] prod;
    wire [15:0] reg_a_d_out, reg_b_c_out;
    wire [15:0] subtractor_result;

    counter_2bit counter_2bit_inst (
        .clk(clk),
        .reset(rst),
        .enable(en_counter),
        .load_in(1'b0),
        .load(1'b0),
        .count(count_2bit),
        .c_out(carry_out)
    );

    counter_4bit counter_4bit_inst (
        .clk(clk),
        .reset(1'b0),
        .enable(en_counter),
        .load_in(start_address),
        .load(rst),
        .count(address_to_memory),
        .c_out(carry_out_4bit)
    );

    decoder_2to4 decoder_2to4_inst (
        .sel(count_2bit),
        .out_0(decoder_2to4_out[0]),
        .out_1(decoder_2to4_out[1]),
        .out_2(decoder_2to4_out[2]),
        .out_3(decoder_2to4_out[3])
    );

    register_8bit reg_a (
        .clk(clk),
        .data_in(data_in),
        .load(decoder_2to4_out[0]),
        .data_out(reg_a_out)
    );

    register_8bit reg_b (
        .clk(clk),
        .data_in(data_in),
        .load(decoder_2to4_out[1]),
        .data_out(reg_b_out)
    );

    register_8bit reg_c (
        .clk(clk),
        .data_in(data_in),
        .load(decoder_2to4_out[2]),
        .data_out(reg_c_out)
    );

    register_8bit reg_d (
        .clk(clk),
        .data_in(data_in),
        .load(decoder_2to4_out[3]),
        .data_out(reg_d_out)
    );

    mux_2to1 mux_2to1_inst (
        .a(reg_a_out),
        .b(reg_b_out),
        .c(reg_c_out),
        .d(reg_d_out),
        .sel(sel),
        .out_1(mux_out_1),
        .out_2(mux_out_2)
    );

    decoder_1to2 decoder_1to2_inst (
        .sel(sel),
        .out_0(decoder_1to2_out[0]),
        .out_1(decoder_1to2_out[1])
    );

    multiplier multiplier_inst (
        .input_1(mux_out_1),
        .input_2(mux_out_2),
        .product(prod)
    );

    register_16bit reg_a_d (
        .clk(clk),
        .load(decoder_1to2_out[0]),
        .data_in(prod),
        .data_out(reg_a_d_out)
    );

    register_16bit reg_b_c (
        .clk(clk),
        .load(decoder_1to2_out[1]),
        .data_in(prod),
        .data_out(reg_b_c_out)
    );

    subtractor subtractor_inst (
        .input_1(reg_a_d_out),
        .input_2(reg_b_c_out),
        .result(out)
    );

endmodule
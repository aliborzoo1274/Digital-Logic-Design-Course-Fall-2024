module multiplier (
    input signed [7:0] input_1,
    input signed [7:0] input_2,
    output signed [15:0] product
);

    assign product = input_1 * input_2;

endmodule
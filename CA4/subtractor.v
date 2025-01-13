module subtractor (
    input [15:0] input_1,
    input [15:0] input_2,
    output [15:0] result
);

    assign result = input_1 - input_2;

endmodule
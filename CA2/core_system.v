module core_system (in_1, in_2, opcode, out, overflow);
    input [3:0] in_1, in_2;
    input [2:0] opcode;
    output [3:0] out;
    output overflow;

    wire [3:0] w_in_2;
    wire w_cin;
    wire [3:0] w_adder;
    wire [3:0] w_little_mux;
    wire [3:0] w_adder_min;
    wire [3:0] w_xor;
    wire w_or;
    wire [3:0] w_adder_max;
    wire in_1_gt_in_2, in_1_eq_in_2, in_1_lt_in_2;
    wire [3:0] w_min, w_max;

    4bit_mux8to1 M1 ({in_2, in_2, ~in_2, ~in_2, ~in_2, in_2, in_2, in_2}, opcode, w_in_2);
    mux8to1 M2 ({0, 0, 1, 1, 1, 0, 0, 0}, opcode, w_cin);
    adder A (w_cin, in_1, w_in_2, w_adder, overflow);
    4bit_mux2to1 M3 ({in_2, in_1}, w_adder[3], w_little_mux);
    4bit_mux4to1 M4 ({in_2, w_little_mux, w_little_mux, in_1}, {in_1[3], w_in_2[3]}, w_adder_min);
    assign w_xor = w_adder_min ^ in_1;
    assign w_or = |w_xor;
    4bit_mux2to1 M5 ({in_2, in_1}, w_or, w_adder_max);
    comparator C (in_1, in_2, in_1_gt_in_2, in_1_eq_in_2, in_1_lt_in_2);
    4bit_mux2to1 M6 ({in_1, in_2}, in_1_gt_in_2, w_min);
    4bit_mux2to1 M6 ({in_2, in_1}, in_1_gt_in_2, w_max);
    4bit_mux8to1 M7 ({in_2, w_adder, w_adder, w_adder_min, w_adder_max, w_min, w_max, in_2}, opcode, out);
endmodule
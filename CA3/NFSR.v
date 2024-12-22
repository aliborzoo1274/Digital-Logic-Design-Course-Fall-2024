module nfsr (
    input clk,
    input rst,
    input shift_en,
    input Par_load,
    input [79:0] Seed,
    output [79:0] Par_out,
    output Ser_out
);
    wire feedback;
    wire [79:0] shift_reg;

    shift_register_80 u_shift_register (
        .Ser_In(feedback),
        .Par_In(Seed),
        .Par_load(Par_load),
        .shift_en(shift_en),
        .rst(rst),
        .clk(clk),
        .Par_out(shift_reg),
        .Ser_Out(Ser_out)
    );

    assign feedback = shift_reg[0] ^ shift_reg[5] ^ shift_reg[6] ^ shift_reg[9] ^
    shift_reg[17] ^ shift_reg[22] ^ (shift_reg[4] & shift_reg[13]) ^
    (shift_reg[8] & shift_reg[16]) ^ (shift_reg[5] & shift_reg[11] & shift_reg[14]) ^
    (shift_reg[2] & shift_reg[5] & shift_reg[8] & shift_reg[10]);

    assign Par_out = shift_reg;

endmodule
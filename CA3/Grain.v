module grain (
    input clk,
    input rst,
    input shift_en,
    input Par_load,
    input [79:0] Seed,
    output out
);
    wire feedback1, feedback2, feedback3;
    wire [79:0] shift_reg1;
    wire [79:0] shift_reg2;
    wire out1, out2;
    wire xorin, xorout;

    shift_register_80 u_shift_register1 (
        .Ser_In(feedback1),
        .Par_In(Seed),
        .Par_load(Par_load),
        .shift_en(shift_en),
        .rst(rst),
        .clk(clk),
        .Par_out(shift_reg1),
        .Ser_Out(out1)
    );

    shift_register_80 u_shift_register2 (
        .Ser_In(xorin),
        .Par_In(Seed),
        .Par_load(Par_load),
        .shift_en(shift_en),
        .rst(rst),
        .clk(clk),
        .Par_out(shift_reg2),
        .Ser_Out(out2)
    );

    assign feedback1 = shift_reg1[62] ^ shift_reg1[51] ^ shift_reg1[38] ^ shift_reg1[23] ^ shift_reg1[13] ^ shift_reg1[0];

    assign feedback2 = shift_reg2[0] ^ shift_reg2[5] ^ shift_reg2[6] ^ shift_reg2[9] ^
    shift_reg2[17] ^ shift_reg2[22] ^ (shift_reg2[4] & shift_reg2[13]) ^
    (shift_reg2[8] & shift_reg2[16]) ^ (shift_reg2[5] & shift_reg2[11] & shift_reg2[14]) ^
    (shift_reg2[2] & shift_reg2[5] & shift_reg2[8] & shift_reg2[10]);

    assign feedback3 = shift_reg1[0] ^ shift_reg1[3] ^ (shift_reg1[1] & shift_reg1[2]) ^
    shift_reg2[0] ^ (shift_reg2[1] & shift_reg1[5]) ^ (shift_reg2[3] & shift_reg1[7]) ^
    (shift_reg1[8] & shift_reg1[13] & shift_reg2[5]) ^ shift_reg2[2];

    assign out = out2 ^ feedback3;
    assign xorin = out1 ^ feedback2;

endmodule
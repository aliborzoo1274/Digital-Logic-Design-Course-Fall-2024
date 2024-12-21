module shift_register_24 (
    input Ser_In,
    input [23:0] Par_In,
    input Par_load,
    input shift_en,
    input rst,
    input clk,
    output [23:0] Par_out,
    output Ser_Out
);
    wire [23:0] shift_reg;
    genvar i;

    generate
        for (i = 0; i < 24; i = i + 1) begin : gen_shift_24
            if (i == 0) begin
                dff u_dff (
                    .D(Par_load ? Par_In[i] : (shift_en ? Ser_In : shift_reg[i])),
                    .Clock(clk),
                    .en(shift_en | Par_load),
                    .rst(rst),
                    .Q(shift_reg[i])
                );
            end else begin
                dff u_dff (
                    .D(Par_load ? Par_In[i] : (shift_en ? shift_reg[i-1] : shift_reg[i])),
                    .Clock(clk),
                    .en(shift_en | Par_load),
                    .rst(rst),
                    .Q(shift_reg[i])
                );
            end
        end
    endgenerate

    assign Par_out = shift_reg;
    assign Ser_Out = shift_reg[23];

endmodule


module shift_register_80 (
    input Ser_In,
    input [79:0] Par_In,
    input Par_load,
    input shift_en,
    input rst,
    input clk,
    output [79:0] Par_out,
    output Ser_Out
);
    wire [79:0] shift_reg;
    genvar i;

    generate
        for (i = 0; i < 80; i = i + 1) begin : gen_shift_80
            if (i == 0) begin
                dff u_dff (
                    .D(Par_load ? Par_In[i] : (shift_en ? Ser_In : shift_reg[i])),
                    .Clock(clk),
                    .en(shift_en | Par_load),
                    .rst(rst),
                    .Q(shift_reg[i])
                );
            end else begin
                dff u_dff (
                    .D(Par_load ? Par_In[i] : (shift_en ? shift_reg[i-1] : shift_reg[i])),
                    .Clock(clk),
                    .en(shift_en | Par_load),
                    .rst(rst),
                    .Q(shift_reg[i])
                );
            end
        end
    endgenerate

    assign Par_out = shift_reg;
    assign Ser_Out = shift_reg[79];

endmodule
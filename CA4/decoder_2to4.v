module decoder_2to4 (
    input wire [1:0] sel,
    output reg out_0,
    output reg out_1,
    output reg out_2,
    output reg out_3
);

    always @(*) begin
        out_0 = 1'b0;
        out_1 = 1'b0;
        out_2 = 1'b0;
        out_3 = 1'b0;

        case (sel)
            2'b00: out_0 = 1'b1;
            2'b01: out_1 = 1'b1;
            2'b10: out_2 = 1'b1;
            2'b11: out_3 = 1'b1;
            default: begin
                out_0 = 1'b0;
                out_1 = 1'b0;
                out_2 = 1'b0;
                out_3 = 1'b0;
            end
        endcase
    end
endmodule
module decoder_1to2 (
    input wire sel,
    output reg out_0,
    output reg out_1
);

    always @(*) begin
        out_0 = 1'b0;
        out_1 = 1'b0;

        case (sel)
            1'b0: out_0 = 1'b1;
            1'b1: out_1 = 1'b1;
            default: begin
                out_0 = 1'b0;
                out_1 = 1'b0;
            end
        endcase
    end
endmodule
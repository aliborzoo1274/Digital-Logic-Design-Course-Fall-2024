module four_bit_mux2to1 (w, s, f);
    input [0:7] w;
    input s;
    output reg [3:0] f;

    always @(*)
    begin
        case (s)
            1'b0: f = w[0:3];
            1'b1: f = w[4:7];
            default: f = 4'b0000;
        endcase
    end
endmodule
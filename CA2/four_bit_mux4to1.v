module four_bit_mux4to1 (w, s, f);
    input [15:0] w;
    input [2:0] s;
    output reg [3:0] f;

    always @(*)
    begin
        case (s)
            2'b00: f = w[3:0];
            2'b01: f = w[7:4];
            2'b10: f = w[11:8];
            2'b11: f = w[15:12];
            default: f = 4'b0000;
        endcase
    end
endmodule
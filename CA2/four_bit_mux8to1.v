module four_bit_mux8to1 (w, s, f);
    input [31:0] w;
    input [2:0] s;
    output reg [3:0] f;

    always @(*)
    begin
        case (s)
            3'b000: f = w[3:0];
            3'b001: f = w[7:4];
            3'b010: f = w[11:8];
            3'b011: f = w[15:12];
            3'b100: f = w[19:16];
            3'b101: f = w[23:20];
            3'b110: f = w[27:24];
            3'b111: f = w[31:28];
            default: f = 4'b0000;
        endcase
    end
endmodule
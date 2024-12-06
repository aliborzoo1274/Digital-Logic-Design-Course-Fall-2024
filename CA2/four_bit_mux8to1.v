module four_bit_mux8to1 (w, s, f);
    input [0:31] w;
    input [2:0] s;
    output reg [3:0] f;

    always @(*)
    begin
        case (s)
            3'b000: f = w[0:3];
            3'b001: f = w[4:7];
            3'b010: f = w[8:11];
            3'b011: f = w[12:15];
            3'b100: f = w[16:19];
            3'b101: f = w[20:23];
            3'b110: f = w[24:27];
            3'b111: f = w[28:31];
            default: f = 4'b0000;
        endcase
    end
endmodule
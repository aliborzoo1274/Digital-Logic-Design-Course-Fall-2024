module four_bit_mux4to1 (w, s, f);
    input [0:15] w;
    input [1:0] s;
    output reg [3:0] f;

    always @(*)
    begin
        case (s)
            2'b00: f = w[0:3];
            2'b01: f = w[4:7];
            2'b10: f = w[8:11];
            2'b11: f = w[12:15];
            default: f = 4'b0000;
        endcase
    end
endmodule
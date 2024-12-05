module 4bit_mux2to1 (w, s, f);
    input [7:0] w;
    input [2:0] s;
    output reg [3:0] f;

    always @(*)
    begin
        case (s)
            1'b0: f = w[3:0];
            1'b1: f = w[7:4];
            default: f = 4'b0000;
        endcase
    end
endmodule
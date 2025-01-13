module mux_2to1 (
    input wire [7:0] a,
    input wire [7:0] b,
    input wire [7:0] c,
    input wire [7:0] d,
    input wire sel,
    output reg [7:0] out_1,
    output reg [7:0] out_2
);

    always @(*) begin
        case (sel)
            1'b0: begin
                out_1 = a;
                out_2  = d;
            end
            1'b1: begin
                out_1 = b;
                out_2  = c;
            end
            default: begin
                out_1 = 8'b0;
                out_2  = 8'b0;
            end
        endcase
    end
endmodule
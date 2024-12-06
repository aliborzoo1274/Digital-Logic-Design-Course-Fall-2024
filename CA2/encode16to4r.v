module encoder16to4 (w, y);
    input [15:0]w;
    output [3:0] y;
    reg [3:0] y;
    always @(*)
    begin
        casex(w)
            16'b1xxxxxxxxxxxxxxx: y = 15;
            16'b01xxxxxxxxxxxxxx: y = 14;
            16'b001xxxxxxxxxxxxx: y = 13;
            16'b0001xxxxxxxxxxxx: y = 12;
            16'b00001xxxxxxxxxxx: y = 11;
            16'b000001xxxxxxxxxx: y = 10;
            16'b0000001xxxxxxxxx: y = 9;
            16'b00000001xxxxxxxx: y = 8;
            16'b000000001xxxxxxx: y = 7;
            16'b0000000001xxxxxx: y = 6;
            16'b00000000001xxxxx: y = 5;
            16'b000000000001xxxx: y = 4;
            16'b0000000000001xxx: y = 3;
            16'b00000000000001xx: y = 2;
            16'b000000000000001x: y = 1;
            16'b0000000000000001: y = 0;
        endcase
    end
endmodule
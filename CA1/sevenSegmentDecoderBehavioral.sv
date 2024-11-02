`timescale 1ns/1ns
module sevenSegmentDecoderBehavioral(input w, x, y, z, output[6:0] out);
    assign out[6] = (~x & ~y & ~z) | w | y | (x & z);
    assign out[5] = (~y & ~z) | (y & z) | ~x;
    assign out[4] = ~y | z | x;
    assign out[3] = (~x & ~y & ~z) | (x & ~y & z) | (~x & y) | (y & ~z) | w;
    assign out[2] = (y & ~z) | (~x & ~y & ~z);
    assign out[1] = (~y & ~z) | (x & ~z) | (x & ~y) | w;
    assign out[0] = (~x & y) | (x & ~z) | (x & ~y) | w;
endmodule
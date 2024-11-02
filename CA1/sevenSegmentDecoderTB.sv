`timescale 1ns/1ns
module sevenSegmentDecoderTBfor0();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor1();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor2();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b1;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor3();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b1;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor4();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b0;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor5();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b0;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor6();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b1;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor7();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b1;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor8();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b1;
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderTBfor9();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoder UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b1;
        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #20;
    end
endmodule
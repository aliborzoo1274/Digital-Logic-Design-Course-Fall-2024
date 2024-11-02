`timescale 1ns/1ns
module sevenSegmentDecoderBehavioralTBfor0();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor1();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor2();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b1;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor3();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b0;
        y = 1'b1;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor4();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b0;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor5();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b0;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor6();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b1;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor7();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b0;
        x = 1'b1;
        y = 1'b1;
        z = 1'b1;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor8();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b1;
        x = 1'b0;
        y = 1'b0;
        z = 1'b0;
        #20;
    end
endmodule

module sevenSegmentDecoderBehavioralTBfor9();
    logic w, x, y, z;
    wire[6:0] TB_out;
    sevenSegmentDecoderBehavioral UT (w, x, y, z, TB_out);
    initial begin
        w = 1'b1;
        x = 1'b0;
        y = 1'b0;
        z = 1'b1;
        #20;
    end
endmodule
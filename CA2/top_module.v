module Top_Module (inp1, inp2, opc, out, overflow);
    input [15:0] inp1, inp2;
    input [2:0] opc;
    output [15:0] out;
    output overflow;

    wire [3:0] w_inp1;
    wire [3:0] w_inp2;
    wire [3:0] w_out;

    encoder16to4 encoder1 (inp1, w_inp1);
    encoder16to4 encoder2 (inp2, w_inp2);

    core_system alu (w_inp1, w_inp2, opc, w_out, overflow);
    decoder4to16 decoder (w_out, out);
    endmodule
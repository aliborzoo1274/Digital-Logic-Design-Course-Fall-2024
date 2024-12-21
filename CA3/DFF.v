module dff (D, Clock, en, rst, Q);
    input D, Clock, en, rst;
    output Q;
    wire wnot, wlatch;
    wire wb1, wb2;

    not g1 (wnot, Clock);
    gated_d_latch g2 (D, wnot, 1'b1, 1'b0, wlatch, wb1);
    gated_d_latch g3 (wlatch, Clock, en, rst, Q, wb2);
endmodule
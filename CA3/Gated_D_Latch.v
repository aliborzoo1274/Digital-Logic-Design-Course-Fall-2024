module gated_d_latch (D, Clock, en, rst, Q, Qb);
    input D, Clock, en, rst;
    output Q, Qb;
    wire w_and, wnot, wnand1, wnand2, wmux1, wmux2;

    and g1 (w_and, Clock, en);
    not g2 (wnot, D);
    nand g3 (wnand1, D, w_and);
    nand g4 (wnand2, wnot, w_and);
    mux2to1 g5 ({1'b1, wnand1}, rst, wmux1);
    mux2to1 g6 ({1'b0, wnand2}, rst, wmux2);
    nand g7 (Q, wmux1, Qb);
    nand g8 (Qb, wmux2, Q);
endmodule
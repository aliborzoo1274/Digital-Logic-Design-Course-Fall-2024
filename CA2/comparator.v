module comparator (x, y, x_gt_y, x_eq_y, x_lt_y);
    input [3:0] x, y;
    output x_gt_y, x_eq_y, x_lt_y;
    wire x_eq_y, x_gt_y;
    wire [3:0] i;
    wire [3:0] w_and;
    wire [3:0] w_not;

    xnor i0 (i[0], x[0], y[0]);
    xnor i1 (i[1], x[1], y[1]);
    xnor i2 (i[2], x[2], y[2]);
    xnor i3 (i[3], x[3], y[3]);

    not not_x3 (w_not[0], x[3]);
    not not_y2 (w_not[1], y[2]);
    not not_y1 (w_not[2], y[1]);
    not not_y0 (w_not[3], y[0]);

    and a0 (w_and[0], y[3], w_not[0]);
    and a1 (w_and[1], i[3], w_not[1], x[2]);
    and a2 (w_and[2], i[3], i[2], w_not[2], x[1]);
    and a3 (w_and[3], i[3], i[2], i[1], w_not[3], x[0]);
    and a4 (x_eq_y, i[3], i[2], i[1], i[0]);

    or gt (x_gt_y, w_and[0], w_and[1], w_and[2], w_and[3]);
    nor lt (x_lt_y, x_eq_y, x_gt_y);
endmodule
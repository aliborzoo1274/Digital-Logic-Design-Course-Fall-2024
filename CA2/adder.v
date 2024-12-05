module adder (cin, x, y, s, overflow);
    input cin;
    input [3:0] x, y;
    output [3:0] s;
    output overflow;

    wire [4:1] c;
    wire [3:0] g;
    wire [3:0] p;
    wire [9:0] w;

    and g0 (g[0], x[0], y[0]);
    and g1 (g[1], x[1], y[1]);
    and g2 (g[2], x[2], y[2]);
    and g3 (g[3], x[3], y[3]);
    or p0 (p[0], x[0], y[0]);
    or p1 (p[1], x[1], y[1]);
    or p2 (p[2], x[2], y[2]);
    or p3 (p[3], x[3], y[3]);

    and w0 (w[0], p[0], cin);
    or c1 (c[1], g[0], w[0]);

    and w1 (w[1], p[1], g[0]);
    and w2 (w[2], p[1], p[0], cin);
    or c2 (c[2], g[1], w[1], w[2]);

    and w3 (w[3], p[2], g[1]);
    and w4 (w[4], p[2], p[1], g[0]);
    and w5 (w[5], p[2], p[1], p[0], cin);
    or c3 (c[3], g[2], w[3], w[4], w[5]);

    and w6 (w[6], p[3], g[2]);
    and w7 (w[7], p[3], p[2], g[1]);
    and w8 (w[8], p[3], p[2], p[1], g[0]);
    and w9 (w[9], p[3], p[2], p[1], p[0], cin);
    or c4 (c[4], g[3], w[6], w[7], w[8], w[9]);

    xor s0 (s[0], cin, x[0], y[0]);
    xor s1 (s[1], c[1], x[1], y[1]);
    xor s2 (s[2], c[2], x[2], y[2]);
    xor s3 (s[3], c[3], x[3], y[3]);

    xor ovf (overflow, c[3], c[4]);
endmodule
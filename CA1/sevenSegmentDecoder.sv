`timescale 1ns/1ns
module sevenSegmentDecoder(input w, x, y, z, output[6:0] out);
	wire not_x, not_y, not_z;
	not #(1) g11(not_x, x),
			 g12(not_y, y),
			 g13(not_z, z);
	wire w1, w2, w3, w4, w5, w6, w7, w8, w9;
	and #(2) g1(w1, not_x, not_y, not_z),
			 g2(w2, x, z),
			 g3(w3, not_y, not_z),
			 g4(w4, y, z),
			 g5(w5, x, not_y, z),
			 g6(w6, not_x, y),
			 g7(w7, y, not_z),
			 g8(w8, x, not_z),
			 g9(w9, x, not_y);
	or #(3) a(out[6], w1, w, y, w2),
			b(out[5], w3, w4, not_x),
			c(out[4], x, z, not_y),
			d(out[3], w1, w, w5, w6, w7),
			e(out[2], w1, w7),
			f(out[1], w, w3, w8, w9),
			g(out[0], w, w6, w8, w9);
endmodule
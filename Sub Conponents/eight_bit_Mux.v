module eight_bit_mux(y, a, b, sel);

input [7:0]a;
input [7:0]b;
input sel;
output [7:0]y;

one_bit_mux(y[0], a[0], b[0], sel);
one_bit_mux(y[1], a[1], b[1], sel);
one_bit_mux(y[2], a[2], b[2], sel);
one_bit_mux(y[3], a[3], b[3], sel);
one_bit_mux(y[4], a[4], b[4], sel);
one_bit_mux(y[5], a[5], b[5], sel);
one_bit_mux(y[6], a[6], b[6], sel);
one_bit_mux(y[7], a[7], b[7], sel);

endmodule

module one_bit_mux(y, a, b, sel);

input a, b, sel;
output y;

wire selNot, w0, w1;


not (selNot, sel);
and (w0, a, selNot);
and (w1, sel, b);
or (y, w0, w1);

endmodule
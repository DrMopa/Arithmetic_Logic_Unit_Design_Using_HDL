module eight_bit_less(out, x7, x6, x5, x4, x3, x2, x1, x0, y0, y1, y2, y3, y4, y5, y6, y7);

input x7, x6, x5, x4, x3, x2, x1, x0, y0, y1, y2, y3, y4, y5, y6, y7;
output out;

wire equal1, equal2, less1, less2, and1, and2, and3; //need to add for mux or logic gated model

four_bit_less_equal most_sig(equal1, less1, x7, x6, x5, x4, y7, y6, y5, y4);
four_bit_less_equal least_sig(equal2, less2, x3, x2, x1, x0, y3, y2, y1, y0);

// add logic here (use mux or gates)

and a1 (and1, (~less1), equal1, less2, (~equal2));
and a2 (and2, less1, (~equal1), (~less2), equal2);
and a3 (and3, less1, (~equal1), less2, (~equal2));

or (out, and1, and2, and3);

endmodule
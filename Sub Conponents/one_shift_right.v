module one_shift_right(out, a, b, s);

input a, b, s;
output out;
wire w0, w1, w2;


and and1(w0, a, s);
not not1(w1, s);
and and2(w2, w1, b);
or or1(out, w0, w2);

endmodule
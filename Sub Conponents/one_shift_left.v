module one_shift_left(out, a, b, s);

input a, b, s;
output out;
wire w0, w1, w2;

not not1(w0, s);
and and1(w1, w0, a);
and and2(w2, s, b);
or or1(out, w1, w2);

endmodule
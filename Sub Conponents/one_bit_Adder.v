module one_bit_Adder(c_out, sum, in1, in2, c_in);

input in1, in2, c_in;
output c_out, sum;

wire w0, w1, w2;

xor x1 (w0, in1, in2);
and a1 (w1, a, b);
xor x2 (sum, w0, c_in);
and a2 (w2, c_in, w0);
or o1 (c_out, w2, w1);

endmodule
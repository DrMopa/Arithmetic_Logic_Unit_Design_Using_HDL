module fourBitAdd_Sub(b0, b1, b2, b3, a0, a1, a2, a3, a_s, s0, s1, s2, s3, c_out);

input b0, b1, b2, b3, a0, a1, a2, a3, a_s;
output s0, s1, s2, s3, c_out;

wire w0, w1, w2, w3, co1, co2, co3;

xor x0(w0, b0, a_s);
xor x1(w1, b1, a_s);
xor x2(w2, b2, a_s);
xor x3(w3, b3, a_s);

one_bit_Adder bit1(co1, s0, x0, a0, a_s);
one_bit_Adder bit2(co2, s1, x1, a1, co1);
one_bit_Adder bit3(co3, s2, x2, a2, co2);

endmodule

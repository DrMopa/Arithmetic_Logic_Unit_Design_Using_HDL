module four_bit_Multiplier(p7, p6, p5, p4, p3, p2, p1, p0, a3, a2, a1, a0, b3, b2, b1, b0);

input a3, a2, a1, a0,
      b3, b2, b1, b0;
output p7, p6, p5, p4, p3, p2, p1, p0;

wire w15, w14, w13, w12, w11, w10, w9, w8, w7, w6, w5, w4, w2, w1, w0, w,
     s1, s2, s3, s5, s6, s7,
     c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10;

assign w = 1'b0;

and and0(w0, a3, b0);
and and1(w1, a2, b0);
and and2(w2, a1, b0);
and and3(p0, a0, b0);
and and4(w4, a3, b1);
and and5(w5, a2, b1);
and and6(w6, a1, b1);
and and7(w7, a0, b1);

one_bit_Adder add0(c0, p1, w7, w2, w);
one_bit_Adder add1(c1, s1, w6, w1, c0);
one_bit_Adder add2(c2, s2, w5, w0, c1);
one_bit_Adder add3(c3, s3, w4, w, c2);

and and8(w8, a3, b2);
and and9(w9, a2, b2);
and and10(w10, a1, b2);
and and11(w11, a0, b2);

one_bit_Adder add4(c4, p2, w11, s1, w);
one_bit_Adder add5(c5, s5, w10, s2, c4);
one_bit_Adder add6(c6, s6, w9, s3, c5);
one_bit_Adder add7(c7, s7, w8, c3, c6);

and and12(w12, a3, b3);
and and13(w13, a2, b3);
and and14(w14, a1, b3);
and and15(w15, a0, b3);

one_bit_Adder add8(c8, p3, w15, s5, w);
one_bit_Adder add9(c9, p4, w14, s6, c8);
one_bit_Adder add10(c10, p5, w13, s7, c9);
one_bit_Adder add11(p7, p6, w12, c7, c10);

endmodule
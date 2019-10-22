module four_bit_less_equal(equal, less, a3, a2, a1, a0, b3, b2, b1, b0);

input a3, a2, a1, a0, b3, b2, b1, b0;
output equal, less;

wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10,
     w11, w12, w13, w14, w15, w16, w17, w18, w19,
     w20, w21, w22;
     
not n0(w0, a3);
not n1(w1, b3);
not n2(w2, a2);
not n3(w3, b2);
not n4(w4, a1);
not n5(w5, b1);
not n6(w6, a0);
not n7(w7, b0);

and and0(w8, w0, b3);
and and1(w9, w1, a3);
and and2(w10, w2, b2);
and and3(w11, w3, a2);
and and4(w12, w4, b1);
and and5(w13, w5, a1);
and and6(w14, w6, b0);
and and7(w15, w7, a0);

nor nor0(w16, w8, w9);
nor nor1(w17, w10, w11);
nor nor2(w18, w12, w13);
nor nor3(w19, w14, w15);

and and8(w20, w16, w10);
and and9(w21, w16, w17, w12);
and and10(w22, w16, w17, w18, w14);
and and11(equal, w16, w17, w18, w19);

or or1(less, w8, w20, w21, w22);

endmodule
module eight_shift_left(y7, y6, y5, y4, y3, y2, y1, y0, x7, x6, x5, x4, x3, x2, x1, x0, s0, s1, s2);

input  x7, x6, x5, x4, x3, x2, x1, x0, s0, s1, s2;
output y0, y1, y2, y3, y4, y5, y6, y7;

wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w;

assign w = 1'b0;

one_shift_left shift0(w0, x0, w, s0);
one_shift_left shift1(w1, x1, x0, s0);
one_shift_left shift2(w2, x2, x1, s0);
one_shift_left shift3(w3, x3, x2, s0);
one_shift_left shift4(w4, x4, x3, s0);
one_shift_left shift5(w5, x5, x4, s0);
one_shift_left shift6(w6, x6, x5, s0);
one_shift_left shift7(w7, x7, x6, s0);

one_shift_left shift8(w8, w0, w, s1);
one_shift_left shift9(w9, w1, w, s1);
one_shift_left shift10(w10, w2, w0, s1);
one_shift_left shift11(w11, w3, w1, s1);
one_shift_left shift12(w12, w4, w2, s1);
one_shift_left shift13(w13, w5, w3, s1);
one_shift_left shift14(w14, w6, w4, s1);
one_shift_left shift15(w15, w7, w5, s1);

one_shift_left shift16(y0, w8, w, s2);
one_shift_left shift17(y1, w9, w, s2);
one_shift_left shift18(y2, w10, w, s2);
one_shift_left shift19(y3, w11, w8, s2);
one_shift_left shift20(y4, w12, w9, s2);
one_shift_left shift21(y5, w13, w10, s2);
one_shift_left shift22(y6, w14, w11, s2);
one_shift_left shift23(y7, w15, w12, s2);

endmodule
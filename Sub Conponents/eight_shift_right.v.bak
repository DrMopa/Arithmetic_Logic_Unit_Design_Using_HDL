module eight_shift_right(y7, y6, y5, y4, y3, y2, y1, y0, x7, x6, x5, x4, x3, x2, x1, x0, s0, s1, s2);

input  x7, x6, x5, x4, x3, x2, x1, x0, s0, s1, s2;
output y0, y1, y2, y3, y4, y5, y6, y7;

wire w0, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w;

assign w = 1'b0;

one_shift_right shift0(w0, x0, x1, s0);
one_shift_right shift1(w1, x1, x2, s0);
one_shift_right shift2(w2, x2, x3, s0);
one_shift_right shift3(w3, x3, x4, s0);
one_shift_right shift4(w4, x4, x5, s0);
one_shift_right shift5(w5, x5, x6, s0);
one_shift_right shift6(w6, x6, x7, s0);
one_shift_right shift7(w7, x7, w, s0);

one_shift_right shift8(w8, w0, w2, s1);
one_shift_right shift9(w9, w1, w3, s1);
one_shift_right shift10(w10, w2, w4, s1);
one_shift_right shift11(w11, w3, w5, s1);
one_shift_right shift12(w12, w4, w6, s1);
one_shift_right shift13(w13, w5, w7, s1);
one_shift_right shift14(w14, w6, w, s1);
one_shift_right shift15(w15, w7, w, s1);

one_shift_right shift16(y0, w8, w11, s2);
one_shift_right shift17(y1, w9, w12, s2);
one_shift_right shift18(y2, w10, w13, s2);
one_shift_right shift19(y3, w11, w14, s2);
one_shift_right shift20(y4, w12, w15, s2);
one_shift_right shift21(y5, w13, w, s2);
one_shift_right shift22(y6, w14, w, s2);
one_shift_right shift23(y7, w15, w, s2);

endmodule
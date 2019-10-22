module eight_Bit_Add_Sub(b0, b1, b2, b3, b4, b5, b6, b7, a0, a1, a2, a3, a4, a5, a6, a7, a_s, s0, s1, s2, s3, s4, s5, s6, s7, c_out);

input b0, b1, b2, b3, b4, b5, b6, b7, a0, a1, a2, a3, a4, a5, a6, a7, a_s;
output s0, s1, s2, s3, s4, s5, s6, s7, c_out;

wire w0, w1, w2, w3, w4, w5, w6, w7, co1, co2, co3, co4, co5, co6, co7, co8;

xor x0 (w0, b0, a_s);
xor x1 (w1, b1, a_s);
xor x2 (w2, b2, a_s);
xor x3 (w3, b3, a_s);
xor x4 (w4, b4, a_s);
xor x5 (w5, b5, a_s);
xor x6 (w6, b6, a_s);
xor x7 (w7, b7, a_s);


one_bit_Adder bit0(co1, s0, w0, a0, a_s);
one_bit_Adder bit1(co2, s1, w1, a1, co1);
one_bit_Adder bit2(co3, s2, w2, a2, co2);
one_bit_Adder bit3(co4, s3, w3, a3, co3);
one_bit_Adder bit4(co5, s4, w4, a4, co4);
one_bit_Adder bit5(co6, s5, w5, a5, co5);
one_bit_Adder bit6(co7, s6, w6, a6, co6);
one_bit_Adder bit7(co8, s7, w7, a7, co7);

endmodule


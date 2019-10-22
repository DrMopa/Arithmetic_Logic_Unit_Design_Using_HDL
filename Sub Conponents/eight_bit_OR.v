module eight_bit_OR(o7, o6, o5, o4, o3, o2, o1, o0, x0, x1, x2, x3, x4, x5, x6, x7, y0, y1, y2, y3, y4, y5, y6, y7);

input x0, x1, x2, x3, x4, x5, x6, x7, y0, y1, y2, y3, y4, y5, y6, y7;
output o0, o1, o2, o3, o4, o5, o6, o7;

or or0(o0, x0, y0);
or or1(o1, x1, y1);
or or2(o2, x2, y2);
or or3(o3, x3, y3);
or or4(o4, x4, y4);
or or5(o5, x5, y5);
or or6(o6, x6, y6);
or or7(o7, x7, y7);

endmodule
module eight_bit_NOT(o7, o6, o5, o4, o3, o2, o1, o0, x0, x1, x2, x3, x4, x5, x6, x7);

input x0, x1, x2, x3, x4, x5, x6, x7;
output o0, o1, o2, o3, o4, o5, o6, o7;

not n0(o0, x0);
not n1(o1, x1);
not n2(o2, x2);
not n3(o3, x3);
not n4(o4, x4);
not n5(o5, x5);
not n6(o6, x6);
not n7(o7, x7);

endmodule
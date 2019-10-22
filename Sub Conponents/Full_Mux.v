module full_Mux(y, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, selectLine);

input [7:0]in0;
input [7:0]in1;
input [7:0]in2;
input [7:0]in3;
input [7:0]in4;
input [7:0]in5;
input [7:0]in6;
input [7:0]in7;
input [7:0]in8;
input [7:0]in9;
input [7:0]in10;
input [7:0]in11;
input [7:0]in12;
input [7:0]in13;
input [7:0]in14;
input [7:0]in15;

input [3:0] selectLine;

output [7:0]y;

wire [7:0]bus0;
wire [7:0]bus1;
wire [7:0]bus2;
wire [7:0]bus3;
wire [7:0]bus4;
wire [7:0]bus5;
wire [7:0]bus6;
wire [7:0]bus7;

wire [7:0]bus8;
wire [7:0]bus9;
wire [7:0]bus10;
wire [7:0]bus11;

wire [7:0]bus12;
wire [7:0]bus13;


//one_bit_mux(y, a, b, sel)
//eight_bit_mux(y, a, b, sel);

eight_bit_mux(bus0, in0, in1, selectLine[0]);
eight_bit_mux(bus1, in2, in3, selectLine[0]);
eight_bit_mux(bus2, in4, in5, selectLine[0]);
eight_bit_mux(bus3, in6, in7, selectLine[0]);
eight_bit_mux(bus4, in8, in9, selectLine[0]);
eight_bit_mux(bus5, in10, in11, selectLine[0]);
eight_bit_mux(bus6, in12, in13, selectLine[0]);
eight_bit_mux(bus7, in14, in15, selectLine[0]);

eight_bit_mux(bus8, bus0, bus1, selectLine[1]);
eight_bit_mux(bus9, bus2, bus3, selectLine[1]);
eight_bit_mux(bus10, bus4, bus5, selectLine[1]);
eight_bit_mux(bus11, bus6, bus7, selectLine[1]);

eight_bit_mux(bus12, bus8, bus9, selectLine[2]);
eight_bit_mux(bus13, bus10, bus11, selectLine[2]);

eight_bit_mux(y, bus12, bus13, selectLine[3]);

endmodule



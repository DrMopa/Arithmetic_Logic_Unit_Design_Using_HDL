module RAM(data_out, address, data_in, WE, RE, clk);

input address, data_in, WE, RE, clk;
output data_out;
//wire dummy;
reg [7:0] MEM [255:0];

always @(negedge clk)
	begin
		if (WE=1 & RE=0)
			assign MEM[address]=data_in;
			//data_out=dummy;
		else if (WE=0 & RE=1)
			assign data_out=MEM[address];
			//else
			//	data_out=dummy;
		
	end

endmodule

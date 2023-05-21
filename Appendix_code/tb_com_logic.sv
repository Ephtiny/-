`timescale 1 ns/ 1 ns
module tb_com_logic;
	logic a, b, c;
	logic y;
	
	initial
	begin 
	 a = 1'b0;
	 b = 1'b0;
	 c = 1'b0;
	 #100 a = 1'b1;
	 #100 a = 1'b0;
	 b = 1'b1;
	 #100 b = 1'b0;
	 c = 1'b1;
	 #100 a = 1'b1;
	 #100 a = 1'b0;
	 b = 1'b1;
	 #100 c = 1'b0;
	 a = 1'b1;
	 #100 c = 1'b1;
	 #100;
	end

sillyfunction A1
	(
		.a(a),
		.b(b),
		.c(c),
		.y(y)
	);

endmodule

`timescale 1 ns/ 1 ns
module tb_inv;
	logic [3:0] a;
	logic [3:0] y;
	
	initial
	begin 
	 a = 4'b1;
	 #100 a = ~a;
	 #100 a = ~a;
	 #100 a = ~a;
	 #100 $stop;
	end

inv A3
	(
		.a(a),
		.y(y)
	);

endmodule
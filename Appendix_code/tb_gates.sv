`timescale 1ns/1ns

module tb_gates;
    logic a, b;
    logic y1, y2, y3, y4, y5;
 
gates A3 (
    . a(a),
	. b(b),
	. y1(y1),
	. y2(y2), 
	. y3(y3), 
	. y4(y4),
    . y5(y5)
        );
 
initial begin
a<=0;
b<=0;
#100 
a<=0;
b<=1;
#100 
a<=1;
b<=0;
#100 
a<=1;
b<=1;
#100 $stop;
end
 
endmodule

`timescale 1ns/1ns
module tb_divideby3FSM();
    logic clk;
    logic reset;
    logic y;
    
    divideby3FSM A36(
        . clk(clk),
        . reset(reset),
        . y(y));
    
    always #10 clk = ~clk;
    
    initial begin
        clk = 1;
        reset = 1;
	#10 reset = 0;
	#100 $stop;
    end
endmodule

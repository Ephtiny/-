`timescale 1ns/1ns
module tb_flop();
  // Declare signals
  logic 	  clk;
  logic [3:0] d;
  logic [3:0] q;

  // Instantiate the DUT (Device Under Test)
  flop A20 (
    . clk(clk),
    . d(d),
    . q(q)
  );

  // Clock generation
  always #50 clk = ~clk;
  initial begin
    clk = 0;
    // Test case 1
    d = 4'b0000;
    #100;
    // Test case 2
    d = 4'b1111;
    #100;
    // Test case 3
    d = 4'b1010;
    #100;
    // Test case 4
    d = 4'b0101;
    #100;
    $stop;
  end
endmodule

`timescale 1ns/1ns
module tb_latch();
  // Declare signals
  logic 	  clk;
  logic [3:0] d;
  logic [3:0] q;

  // Instantiate the DUT (Device Under Test)
  latch A24 (
    . clk(clk),
    . d(d),
    . q(q)
  );

  // Stimulus generation
  initial begin
    // Test case 1
    d = 4'b0000;
    clk = 0;
    #100;
    // Test case 2
    d = 4'b1111;
    clk = 0;
    #100;
    // Test case 3
    d = 4'b1010;
    clk = 1;
    #100;
    // Test case 4
    d = 4'b0101;
    clk = 1;
    #100;
    $stop;
  end
endmodule

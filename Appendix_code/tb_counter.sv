`timescale 1ns/1ns
module tb_counter();
  // Declare signals
  logic clk;
  logic reset;
  logic [3:0] q;

  // Instantiate the DUT (Device Under Test)
  counter A25 (
    . clk(clk),
    . reset(reset),
    . q(q)
  );

  // Clock generation
  always #50 clk = ~clk; // ?????10?????

  // Stimulus generation
  initial begin
    clk = 0;
    // Test case 1
    reset = 1'b1;
    #100;
    // Test case 2
    reset = 1'b0;
    #100;
    // Test case 3
    #100;
    // Test case 4
    reset = 1'b1;
    #100;
    // Test case 5
    reset = 1'b0;
    #200;
    $stop;
  end
endmodule

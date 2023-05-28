`timescale 1ns/1ns
module tb_decoder3_8();
  // Declare signals
  logic [2:0] a;
  logic [7:0] y;

  // Instantiate the DUT (Device Under Test)
  decoder3_8 A31 (
    . a(a),
    . y(y)
  );

  // Stimulus generation
  initial begin
    // Test case 1
    a = 3'b000;
    #100;
    // Test case 2
    a = 3'b001;
    #100;
    // Test case 3
    a = 3'b010;
    #100;
    // Test case 4
    a = 3'b011;
    #100;
    // Test case 5
    a = 3'b100;
    #100;
    // Test case 6
    a = 3'b101;
    #100;
    // Test case 7
    a = 3'b110;
    #100;
    // Test case 8
    a = 3'b111;
    #100;
    $stop;
  end
endmodule

`timescale 1ns/1ns

module tb_mux4_8N ();
  logic [3:0] d0, d1, d2, d3;
  logic [1:0] s;
  logic [3:0] y;
  
  mux4_8N A40 (
    . d0(d0),
    . d1(d1),
    . d2(d2),
    . d3(d3),
    . s(s),
    . y(y)
  );
  
  initial begin
    // ?????
    d0 = 4'b0000;
    d1 = 4'b0011;
    d2 = 4'b1100;
    d3 = 4'b1111;
    // ??????
    s = 2'b00;
    #50;
    d0 = 4'b0000;
    d1 = 4'b0011;
    d2 = 4'b1100;
    d3 = 4'b1111;
    s = 2'b01;
    #50;
    d0 = 4'b0000;
    d1 = 4'b0011;
    d2 = 4'b1100;
    d3 = 4'b1111;
    s = 2'b10;
    #50;
    d0 = 4'b0000;
    d1 = 4'b0011;
    d2 = 4'b1100;
    d3 = 4'b1111;
    s = 2'b11;
    #50;
    $stop;
  end
endmodule


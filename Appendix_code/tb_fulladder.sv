`timescale 1ns/1ns

module tb_fulladder();
  
  logic a, b, cin;
  logic s, cout;
  
  // Instantiate the DUT (Device Under Test)
  fulladder  A8(
    . a(a),
    . b(b),
    . cin(cin),
    . s(s),
    . cout(cout)
  );
  initial begin
    // ???? 1
    a = 0; b = 0; cin = 0;
    #100;
    // ???? 2
    a = 0; b = 0; cin = 1;
    #100;
    // ???? 3
    a = 0; b = 1; cin = 0;
    #100;
    // ???? 4
    a = 0; b = 1; cin = 1;
    #100;
    // ???? 5
    a = 1; b = 0; cin = 0;
    #100;
    // ???? 6
    a = 1; b = 0; cin = 1;
    #100;
    // ???? 7
    a = 1; b = 1; cin = 0;
    #100;
    // ???? 8
    a = 1; b = 1; cin = 1;
    #100;
    $stop;
  end
endmodule

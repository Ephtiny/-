module mux4_8N(input		logic  [7:0] d0, d1, d2, d3,
              input		logic  [1:0] s,
              output	logic  [7:0] y);
    
    logic  [7:0] low, hi;
    
    mux2N lowmux(d0, d1, s[0], low);
    mux2N himux(d2, d3, s[0], hi);
    mux2N outmux(low, hi, s[1], y);
endmodule

module counter(input	logic		clk,
               input	logic		reset,
               output	logic  [3:0] q);
    
    always_ff @(posedge clk)
        if (reset)	q <= 4'b0;
    	else	   q <= q+1;
endmodule

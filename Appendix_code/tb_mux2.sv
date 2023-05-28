`timescale 1ns/1ns
module tb_mux2N ();     
    logic [1:0] s;     
    logic [7:0] d0, d1;   
    logic [7:0] y;         
    mux2N A6 (        
        . s (s),          
        . d0(d0),         
        . d1(d1),         
        . y (y));          
initial  
begin         
// Test case 1: select=0, input_0=5, input_1=10        
s = 2'b 00;         
d0 = 8'd 5;         
d1 = 8'd 10;         
#100;               
 // Test case 2: select=1, input_0=5, input_1=10        
s = 2'b 01;       
d0 = 8'd 5;        
d1 = 8'd 10;        
#100;                
// Test case 3: select=0, input_0=255, input_1=127        
s = 2'b 00;        
d0 = 8'd 255;       
d1 = 8'd 127;        
#100;               
// Test case 4: select=1, input_0=255, input_1=127        
s = 2'b 01;        
d0 = 8'd 255;        
d1 = 8'd 127;        
#100;                
// End simulation        
$stop;    
end    
endmodule

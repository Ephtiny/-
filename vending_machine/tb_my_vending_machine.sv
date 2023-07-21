`timescale 1ns/1ns
module tb_my_vending_machine();

  reg clk;
  reg rst_n;
  reg [2:0] key_value;
  
  wire beep;
  wire [3:0] money_flag;
  
  my_vending_machine dut (
    .clk(clk),
    .rst_n(rst_n),
    .key_value(key_value),
    .beep(beep),
    .money_flag(money_flag)
  );
  
  initial begin
    // ???????
    clk = 0;
    rst_n = 1;
    key_value = 3'b111;
    
    // ???????????
    #10 rst_n = 0;
    #10 rst_n = 1;
    
    // ????0.5?
    #5 key_value = 3'b101;
    #5 key_value = 3'b111;
    
    // ????1?
    #5 key_value = 3'b011;
    #5 key_value = 3'b111;
    
    // ????
    #5 key_value = 3'b110;
    #5 key_value = 3'b111;
    
    // ????2.5?
    #5 key_value = 3'b101;
    #5 key_value = 3'b111;
    #5 key_value = 3'b011;
    #5 key_value = 3'b111;
    #5 key_value = 3'b011;
    #5 key_value = 3'b111;
    
    // ????3?
    #5 key_value = 3'b011;
    #5 key_value = 3'b111;
    #5 key_value = 3'b011;
    #5 key_value = 3'b111;
    #5 key_value = 3'b011;
    #5 key_value = 3'b111;
    
    // ??????
    #5 key_value = 3'b101;
    #5 key_value = 3'b111;
    
    // ?????????????
    #40000;
    
    // ????
    $stop;
  end
  
  always begin
    #5 clk <= ~clk;  // ????
  end
  
  // ?????????
  always @(posedge clk or negedge clk) begin
    $display("Time: %0t  key_value = %b  money_flag = %b  beep = %b", $time, key_value, money_flag, beep);
  end
  
endmodule



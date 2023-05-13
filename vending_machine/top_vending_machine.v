module top_vending_machine(
	input wire clk,//??
	input wire rst_n,//??
	input wire [3:0] key,//????
	
	output wire beep,
	output wire [3:0] led,//led?
	output wire [7:0] seg,//????
	output wire [5:0] sel//????
);

wire [3:0] money_flag;
wire [3:0] key_value;
wire [3:0] flag;
wire boot_flag;

//????key1????
key_debounce inst_key_debounce1(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[0]      ),
            
.flag      (flag[0]     ),              
.key_value (key_value[0])          
);


//????key2????
key_debounce inst_key_debounce2(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[1]      ),
            
.flag      (flag[1]     ),              
.key_value (key_value[1])          
);


//????key3????
key_debounce inst_key_debounce3(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[2]      ),
            
.flag      (flag[2]     ),              
.key_value (key_value[2])          
);


//????key4????
key_debounce inst_key_debounce4(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[3]      ),
            
.flag      (flag[3]     ),              
.key_value (key_value[3])          
);


sel_drive inst_sel_drive(
.clk    	  (clk  		 ),
.rst_n	  (rst_n		 ),
.boot_flag (boot_flag),
			
.sel  	  (sel		 )
);


seg_scan inst_seg_scan(
.clk       (clk  		 ),
.rst_n     (rst_n		 ),
.money_flag(money_flag),

.sel       (sel		 ),//????
.seg       (seg		 )//????
);


vending_machine inst_vending_machine(
.clk		    (clk		    ),//??
.rst_n		 (rst_n		 ),//??
.key_value	 ({key_value[3],key_value[2],key_value[1],key_value[0]}),//???
.flag			 ({flag[3],flag[2],flag[1],flag[0]}),

.beep        (beep)	    ,									
.led			 (led			 ),
.money_flag_w(money_flag),
.boot_flag_w(boot_flag)
);
endmodule
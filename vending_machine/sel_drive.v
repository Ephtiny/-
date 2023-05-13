module sel_drive(
	input wire clk,
	input wire rst_n,
	input wire  boot_flag,
	
	output wire [5:0] sel
);
parameter MAX_NUM = 10'd999;//20us
reg [5:0] sel_r;
reg [9:0] cnt;
reg sel_flag;

//20us???
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		cnt <= 10'd0;
	end
	else if(cnt == MAX_NUM)begin
		cnt <= 10'd0;
	end
	else begin
		cnt <= cnt + 1'd1;
	end
end

//????????? 
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		sel_flag <= 1'b0;
	else if(cnt == MAX_NUM)
		sel_flag <= ~sel_flag;      
	else
		sel_flag <= sel_flag;
end 


//????????
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		sel_r <= 6'b111_111;
	end
	else begin
		case(boot_flag)
			1'b0:begin //????
				sel_r <= 6'b111_111;
			end
			1'b1:begin //????
				case(sel_flag)
					1'b0: sel_r <= 6'b111_110;
					1'b1: sel_r <= 6'b111_101;
					default:sel_r <= sel_r;
				endcase
			end
		endcase
	end
end

assign sel = sel_r;

endmodule


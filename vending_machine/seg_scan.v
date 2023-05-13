module seg_scan(
	input wire clk,
	input wire rst_n,
	input wire [3:0] money_flag,//??????
	input wire [5:0] sel,//????
	
	output wire [7:0] seg//????
);

reg [3:0] number;
reg [7:0] seg_r;

reg flag;//??????????????????? 1?? 0???

//??????????????????
always@(*)begin
	case(money_flag)
		4'd0:begin//??0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;//?????????
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;//????????
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd1:begin//??0.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd2:begin//??1.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd1;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd3:begin//??1.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd1;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd4:begin//??2.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd2;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd5:begin//??2.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd2;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd6:begin//??3.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd3;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd7:begin//??0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		default:begin//??0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
	endcase
end


always@(*)begin
	case(number)
		4'd0   :	begin 
						if(flag == 1'b1)begin//?????
							seg_r = 8'b0100_0000;//?????0 ????
						end
						else begin
							seg_r = 8'b1100_0000;//?????0 ?????
						end
					end
		4'd1   :	begin 
						if(flag == 1'b1)begin//?????
							seg_r = 8'b0111_1001;//?????1 ????
						end
						else begin
							seg_r = 8'b1111_1001;//?????1 ?????
						end
					end
		4'd2   : begin 
						if(flag == 1'b1)begin//?????
							seg_r = 8'b0010_0100;//?????2 ????
						end
						else begin
							seg_r = 8'b1010_0100;//?????2 ?????
						end
					end
		4'd3   : begin 
						if(flag == 1'b1)begin//?????
							seg_r = 8'b0011_0000;//?????3 ????
						end
						else begin
							seg_r = 8'b1011_0000;//?????3 ?????
						end
					end
		4'd5   : begin 
						if(flag == 1'b1)begin//?????
							seg_r = 8'b0001_0010;//?????5 ????
						end
						else begin
							seg_r = 8'b1001_0010;//?????5 ?????
						end
					end
		default:	begin 
						if(flag == 1'b1)begin//?????
							seg_r = 8'b0100_0000;//?????0 ????
						end
						else begin
							seg_r = 8'b1100_0000;//?????0 ?????
						end
					end
	endcase
end


assign seg = seg_r;

endmodule
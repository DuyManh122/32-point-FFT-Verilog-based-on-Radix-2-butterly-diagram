//Thực hiện nghịch đảo thông qua phép bù 2
module negative
(
	input rst,
	input clk,
	input 	[31:0] input_value,
	output 	[31:0] output_value
);
	reg [31:0] control;
	
	assign output_value = control;
	
	always @(negedge clk or negedge rst) begin
		if (!rst) begin
			control <= 0;
		end 
		else begin
			control <= ~input_value; //reverse the bit order
			control <= control + 1;  //add 1
		end
	end
endmodule
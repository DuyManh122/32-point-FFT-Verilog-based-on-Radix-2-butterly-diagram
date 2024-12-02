module multiplier_fixed_point
(
	input   		clk,
	input			rst,
    input   [31:0]     A,
    input   [31:0]     B,
    output 	[31:0]     C
);
	
	reg [63:0] product_temp; 				//contains the value of A * B.
	reg [31:0] fixed_point_scale_product; 	//Adjust for fixed point scaling
	
	assign	C = fixed_point_scale_product;

	
	always @(negedge clk or negedge rst)  
	begin
		if (!rst) begin
			product_temp <= 64'b0;
			fixed_point_scale_product <= 32'b0;
		end
		else begin
			product_temp <= A * B;
			fixed_point_scale_product <= product_temp[47:16];
		end
	end
	
endmodule
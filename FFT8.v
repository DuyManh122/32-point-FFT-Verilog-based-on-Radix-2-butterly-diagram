module fft_8point (
    input clk,                     // Clock
    input rst,                   // Reset
	
	//8 real inputs
    input       [31:0]     in0_r,
	input       [31:0]     in1_r,
	input       [31:0]     in2_r,
	input       [31:0]     in3_r,
    input       [31:0]     in4_r,
    input       [31:0]     in5_r,
	input       [31:0]     in6_r,
	input       [31:0]     in7_r,

	//1 complex output
    output      [31:0]     out0_r,
    output      [31:0]     out0_i,

	//2 complex output
    output      [31:0]     out1_r,
    output      [31:0]     out1_i,
	
	//3 complex output
    output      [31:0]     out2_r,
    output      [31:0]     out2_i,
	
	//4 complex output
    output      [31:0]     out3_r,
    output      [31:0]     out3_i,

	//5 complex output
    output      [31:0]     out4_r,
    output      [31:0]     out4_i,

	//6 complex output
    output      [31:0]     out5_r,
    output      [31:0]     out5_i,
	
	//7 complex output
    output      [31:0]     out6_r,
    output      [31:0]     out6_i,

	//8 complex output
    output      [31:0]     out7_r,
    output      [31:0]     out7_i
);
    // Internal signal declarations
	wire [31:0] twiddle_sin[0:7];
	wire [31:0] twiddle_cos[0:7];


	//assign base value to complex twiddle by euler formula
	assign twiddle_sin[0] = {32'h00000000};	//0.0
	assign twiddle_sin[1] = {32'h0000b505};	//0.7071067811865476
	assign twiddle_sin[2] = {32'h00010000};	//1.0
	assign twiddle_sin[3] = {32'h0000b505};	//0.7071067811865476
	assign twiddle_sin[4] = {32'h00000000};	//1.2246467991473532e-16
	assign twiddle_sin[5] = {32'hffff4afb};	//-0.7071067811865475
	assign twiddle_sin[6] = {32'hffff0000};	//-1.0
	assign twiddle_sin[7] = {32'hffff4afb};	//-0.7071067811865477

	assign twiddle_cos[0] = {32'h00010000};	//1.0
	assign twiddle_cos[1] = {32'h0000b505};	//0.7071067811865476
	assign twiddle_cos[2] = {32'h00000000};	//6.123233995736766e-17
	assign twiddle_cos[3] = {32'hffff4afb};	//-0.7071067811865475
	assign twiddle_cos[4] = {32'hffff0000};	//-1.0
	assign twiddle_cos[5] = {32'hffff4afb};	//-0.7071067811865477
	assign twiddle_cos[6] = {32'h00000000};	//-1.8369701987210297e-16
	assign twiddle_cos[7] = {32'h0000b505};	//0.7071067811865474
	
	
	//============================== Stage 1 =========================
	
	
	//output for stage 1
	//real part
	wire [31:0] stage1_real_out[0:7];
	
	//img part
	wire [31:0] stage1_img_out[0:7];
	
	Butterfly2 But2_0
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in0_r),
		.in0_i(0),
		.in1_r(in4_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[0]),
		.out0_i(stage1_img_out[0]),
		.out1_r(stage1_real_out[1]),
		.out1_i(stage1_img_out[1])
	);
	
	Butterfly2 But2_1
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in2_r),
		.in0_i(0),
		.in1_r(in6_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[2]),
		.out0_i(stage1_img_out[2]),
		.out1_r(stage1_real_out[3]),
		.out1_i(stage1_img_out[3])
	);
	
	Butterfly2 But2_2
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in1_r),
		.in0_i(0),
		.in1_r(in5_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[4]),
		.out0_i(stage1_img_out[4]),
		.out1_r(stage1_real_out[5]),
		.out1_i(stage1_img_out[5])
	);

	Butterfly2 But2_3
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in3_r),
		.in0_i(0),
		.in1_r(in7_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[6]),
		.out0_i(stage1_img_out[6]),
		.out1_r(stage1_real_out[7]),
		.out1_i(stage1_img_out[7])
	);



	//============================== Stage 2 =========================
	
	
	//output for stage 2
	//real part
	wire [31:0] stage2_real_out[0:7];
	
	//img part
	wire [31:0] stage2_img_out[0:7];
	
	Butterfly4 But4_0
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[0]),
		.in0_i(stage1_img_out[0]),
		.in1_r(stage1_real_out[1]),
		.in1_i(stage1_img_out[1]),
		.in2_r(stage1_real_out[2]),
		.in2_i(stage1_img_out[2]),
		.in3_r(stage1_real_out[3]),
		.in3_i(stage1_img_out[3]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[2]),
		.twiddle1_i(twiddle_sin[2]),
		
		.out0_r(stage2_real_out[0]),
		.out0_i(stage2_img_out[0]),
		.out1_r(stage2_real_out[1]),
		.out1_i(stage2_img_out[1]),
		.out2_r(stage2_real_out[2]),
		.out2_i(stage2_img_out[2]),
		.out3_r(stage2_real_out[3]),
		.out3_i(stage2_img_out[3])
	);

	Butterfly4 But4_1
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[4]),
		.in0_i(stage1_img_out[4]),
		.in1_r(stage1_real_out[5]),
		.in1_i(stage1_img_out[5]),
		.in2_r(stage1_real_out[6]),
		.in2_i(stage1_img_out[6]),
		.in3_r(stage1_real_out[7]),
		.in3_i(stage1_img_out[7]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[2]),
		.twiddle1_i(twiddle_sin[2]),
		
		.out0_r(stage2_real_out[4]),
		.out0_i(stage2_img_out[4]),
		.out1_r(stage2_real_out[5]),
		.out1_i(stage2_img_out[5]),
		.out2_r(stage2_real_out[6]),
		.out2_i(stage2_img_out[6]),
		.out3_r(stage2_real_out[7]),
		.out3_i(stage2_img_out[7])
	);
 
 
	
	//============================== Stage 3 =========================
	//output for stage 2
	//real part
	wire [31:0] stage3_real_out[0:7];
	
	//img part
	wire [31:0] stage3_img_out[0:7];	
	
	Butterfly8 But8_0
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage2_real_out[0]),
		.in0_i(stage2_img_out[0]),
		.in1_r(stage2_real_out[1]),
		.in1_i(stage2_img_out[1]),
		.in2_r(stage2_real_out[2]),
		.in2_i(stage2_img_out[2]),
		.in3_r(stage2_real_out[3]),
		.in3_i(stage2_img_out[3]),
		.in4_r(stage2_real_out[4]),
		.in4_i(stage2_img_out[4]),
		.in5_r(stage2_real_out[5]),
		.in5_i(stage2_img_out[5]),
		.in6_r(stage2_real_out[6]),
		.in6_i(stage2_img_out[6]),
		.in7_r(stage2_real_out[7]),
		.in7_i(stage2_img_out[7]),
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[1]),
		.twiddle1_i(twiddle_sin[1]),
		.twiddle2_r(twiddle_cos[2]),
		.twiddle2_i(twiddle_sin[2]),
		.twiddle3_r(twiddle_cos[3]),
		.twiddle3_i(twiddle_sin[3]),
		.out0_r(stage3_real_out[0]),
		.out0_i(stage3_img_out[0]),
		.out1_r(stage3_real_out[1]),
		.out1_i(stage3_img_out[1]),
		.out2_r(stage3_real_out[2]),
		.out2_i(stage3_img_out[2]),
		.out3_r(stage3_real_out[3]),
		.out3_i(stage3_img_out[3]),
		.out4_r(stage3_real_out[4]),
		.out4_i(stage3_img_out[4]),
		.out5_r(stage3_real_out[5]),
		.out5_i(stage3_img_out[5]),
		.out6_r(stage3_real_out[6]),
		.out6_i(stage3_img_out[6]),
		.out7_r(stage3_real_out[7]),
		.out7_i(stage3_img_out[7])
	);
	
	assign out0_r = stage3_real_out[0];
	assign out0_i = stage3_img_out[0];
	
	assign out1_r = stage3_real_out[1];
	assign out1_i = stage3_img_out[1];
	
	assign out2_r = stage3_real_out[2];
	assign out2_i = stage3_img_out[2];
	
	assign out3_r = stage3_real_out[3];
	assign out3_i = stage3_img_out[3];
	
	
	assign out4_r = stage3_real_out[4];
	assign out4_i = stage3_img_out[4];
	
	assign out5_r = stage3_real_out[5];
	assign out5_i = stage3_img_out[5];
	
	assign out6_r = stage3_real_out[6];
	assign out6_i = stage3_img_out[6];
	
	assign out7_r = stage3_real_out[7];
	assign out7_i = stage3_img_out[7];
endmodule

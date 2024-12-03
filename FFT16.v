module fft_16point (
    input clk,                     // Clock
    input rst,                   // Reset
	
	//16 real inputs
    input       [31:0]     in0_r,
	input       [31:0]     in1_r,
	input       [31:0]     in2_r,
	input       [31:0]     in3_r,
    input       [31:0]     in4_r,
    input       [31:0]     in5_r,
	input       [31:0]     in6_r,
	input       [31:0]     in7_r,
    input       [31:0]     in8_r,
	input       [31:0]     in9_r,
	input       [31:0]     in10_r,
	input       [31:0]     in11_r,
    input       [31:0]     in12_r,
    input       [31:0]     in13_r,
	input       [31:0]     in14_r,
	input       [31:0]     in15_r,
	
	
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
    output      [31:0]     out7_i,
	
	//9 complex output
    output      [31:0]     out8_r,
    output      [31:0]     out8_i,

	//10 complex output
    output      [31:0]     out9_r,
    output      [31:0]     out9_i,
	
	//11 complex output
    output      [31:0]     out10_r,
    output      [31:0]     out10_i,
	
	//12 complex output
    output      [31:0]     out11_r,
    output      [31:0]     out11_i,

	//13 complex output
    output      [31:0]     out12_r,
    output      [31:0]     out12_i,

	//14 complex output
    output      [31:0]     out13_r,
    output      [31:0]     out13_i,
	
	//15 complex output
    output      [31:0]     out14_r,
    output      [31:0]     out14_i,

	//16 complex output
    output      [31:0]     out15_r,
    output      [31:0]     out15_i

);
    // Internal signal declarations
	wire [31:0] twiddle_sin[0:15];
	wire [31:0] twiddle_cos[0:15];


	//assign base value to complex twiddle by euler formula
	assign twiddle_sin[0] = {32'h00000000};		//0.0
	assign twiddle_sin[1] = {32'h000061f8};		//0.3826834323650898
	assign twiddle_sin[2] = {32'h0000b505};		//0.7071067811865476
	assign twiddle_sin[3] = {32'h0000ec83};		//0.9238795325112867
	assign twiddle_sin[4] = {32'h00010000};		//1.0
	assign twiddle_sin[5] = {32'h0000ec83};		//0.9238795325112867
	assign twiddle_sin[6] = {32'h0000b505};		//0.7071067811865476
	assign twiddle_sin[7] = {32'h000061f8};		//0.3826834323650899
	assign twiddle_sin[8] = {32'h00000000};		//1.2246467991473532e-16
	assign twiddle_sin[9] = {32'hffff9e08};		//-0.38268343236508967
	assign twiddle_sin[10] = {32'hffff4afb};	//-0.7071067811865475
	assign twiddle_sin[11] = {32'hffff137d};	//-0.9238795325112865
	assign twiddle_sin[12] = {32'hffff0000};	//-1.0
	assign twiddle_sin[13] = {32'hffff137d};	//-0.9238795325112866
	assign twiddle_sin[14] = {32'hffff4afb};	//-0.7071067811865477
	assign twiddle_sin[15] = {32'hffff9e08};	//-0.3826834323650904


	assign twiddle_cos[0] = {32'h00010000};		//1.0
	assign twiddle_cos[1] = {32'h0000ec83};		//0.9238795325112867
	assign twiddle_cos[2] = {32'h0000b505};		//0.7071067811865476
	assign twiddle_cos[3] = {32'h000061f8};		//0.38268343236508984
	assign twiddle_cos[4] = {32'h00000000};		//6.123233995736766e-17
	assign twiddle_cos[5] = {32'hffff9e08};		//-0.3826834323650897
	assign twiddle_cos[6] = {32'hffff4afb};		//-0.7071067811865475
	assign twiddle_cos[7] = {32'hffff137d};		//-0.9238795325112867
	assign twiddle_cos[8] = {32'hffff0000};		//-1.0
	assign twiddle_cos[9] = {32'hffff137d};		//-0.9238795325112868
	assign twiddle_cos[10] = {32'hffff4afb};	//-0.7071067811865477
	assign twiddle_cos[11] = {32'hffff9e08};	//-0.38268343236509034
	assign twiddle_cos[12] = {32'h00000000};	//-1.8369701987210297e-16
	assign twiddle_cos[13] = {32'h000061f8};	//0.38268343236509
	assign twiddle_cos[14] = {32'h0000b505};	//0.7071067811865474
	assign twiddle_cos[15] = {32'h0000ec83};	//0.9238795325112865
	
	
	//============================== Stage 1 =========================
	
	
	//output for stage 1
	//real part
	wire [31:0] stage1_real_out[0:15];
	
	//img part
	wire [31:0] stage1_img_out[0:15];
	
	Butterfly2 But2_0
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in0_r),
		.in0_i(0),
		.in1_r(in8_r),
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
		.in0_r(in4_r),
		.in0_i(0),
		.in1_r(in12_r),
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
		.in0_r(in2_r),
		.in0_i(0),
		.in1_r(in10_r),
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
		.in0_r(in6_r),
		.in0_i(0),
		.in1_r(in14_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[6]),
		.out0_i(stage1_img_out[6]),
		.out1_r(stage1_real_out[7]),
		.out1_i(stage1_img_out[7])
	);
	
	Butterfly2 But2_4
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in1_r),
		.in0_i(0),
		.in1_r(in9_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[8]),
		.out0_i(stage1_img_out[8]),
		.out1_r(stage1_real_out[9]),
		.out1_i(stage1_img_out[9])
	);

	Butterfly2 But2_5
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in5_r),
		.in0_i(0),
		.in1_r(in13_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[10]),
		.out0_i(stage1_img_out[10]),
		.out1_r(stage1_real_out[11]),
		.out1_i(stage1_img_out[11])
	);
	
	Butterfly2 But2_6
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in3_r),
		.in0_i(0),
		.in1_r(in11_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[12]),
		.out0_i(stage1_img_out[12]),
		.out1_r(stage1_real_out[13]),
		.out1_i(stage1_img_out[13])
	);

	Butterfly2 But2_7
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in7_r),
		.in0_i(0),
		.in1_r(in15_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[14]),
		.out0_i(stage1_img_out[14]),
		.out1_r(stage1_real_out[15]),
		.out1_i(stage1_img_out[15])
	);
	
	//============================== Stage 2 =========================
	
	
	//output for stage 2
	//real part
	wire [31:0] stage2_real_out[0:15];
	
	//img part
	wire [31:0] stage2_img_out[0:15];
	
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
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		
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
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		
		.out0_r(stage2_real_out[4]),
		.out0_i(stage2_img_out[4]),
		.out1_r(stage2_real_out[5]),
		.out1_i(stage2_img_out[5]),
		.out2_r(stage2_real_out[6]),
		.out2_i(stage2_img_out[6]),
		.out3_r(stage2_real_out[7]),
		.out3_i(stage2_img_out[7])
	);
 

	Butterfly4 But4_2
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[8]),
		.in0_i(stage1_img_out[8]),
		.in1_r(stage1_real_out[9]),
		.in1_i(stage1_img_out[9]),
		.in2_r(stage1_real_out[10]),
		.in2_i(stage1_img_out[10]),
		.in3_r(stage1_real_out[11]),
		.in3_i(stage1_img_out[11]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		
		.out0_r(stage2_real_out[8]),
		.out0_i(stage2_img_out[8]),
		.out1_r(stage2_real_out[9]),
		.out1_i(stage2_img_out[9]),
		.out2_r(stage2_real_out[10]),
		.out2_i(stage2_img_out[10]),
		.out3_r(stage2_real_out[11]),
		.out3_i(stage2_img_out[11])
	); 
	
	
	Butterfly4 But4_3
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[12]),
		.in0_i(stage1_img_out[12]),
		.in1_r(stage1_real_out[13]),
		.in1_i(stage1_img_out[13]),
		.in2_r(stage1_real_out[14]),
		.in2_i(stage1_img_out[14]),
		.in3_r(stage1_real_out[15]),
		.in3_i(stage1_img_out[15]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		
		.out0_r(stage2_real_out[12]),
		.out0_i(stage2_img_out[12]),
		.out1_r(stage2_real_out[13]),
		.out1_i(stage2_img_out[13]),
		.out2_r(stage2_real_out[14]),
		.out2_i(stage2_img_out[14]),
		.out3_r(stage2_real_out[15]),
		.out3_i(stage2_img_out[15])
	);
	
	//============================== Stage 3 =========================
	//output for stage 3
	//real part
	wire [31:0] stage3_real_out[0:15];
	
	//img part
	wire [31:0] stage3_img_out[0:15];	
	
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
		.twiddle1_r(twiddle_cos[2]),
		.twiddle1_i(twiddle_sin[2]),
		.twiddle2_r(twiddle_cos[4]),
		.twiddle2_i(twiddle_sin[4]),
		.twiddle3_r(twiddle_cos[6]),
		.twiddle3_i(twiddle_sin[6]),
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
	
	
	Butterfly8 But8_1
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage2_real_out[8]),
		.in0_i(stage2_img_out[8]),
		.in1_r(stage2_real_out[9]),
		.in1_i(stage2_img_out[9]),
		.in2_r(stage2_real_out[10]),
		.in2_i(stage2_img_out[10]),
		.in3_r(stage2_real_out[11]),
		.in3_i(stage2_img_out[11]),
		.in4_r(stage2_real_out[12]),
		.in4_i(stage2_img_out[12]),
		.in5_r(stage2_real_out[13]),
		.in5_i(stage2_img_out[13]),
		.in6_r(stage2_real_out[14]),
		.in6_i(stage2_img_out[14]),
		.in7_r(stage2_real_out[15]),
		.in7_i(stage2_img_out[15]),
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[2]),
		.twiddle1_i(twiddle_sin[2]),
		.twiddle2_r(twiddle_cos[4]),
		.twiddle2_i(twiddle_sin[4]),
		.twiddle3_r(twiddle_cos[6]),
		.twiddle3_i(twiddle_sin[6]),
		.out0_r(stage3_real_out[8]),
		.out0_i(stage3_img_out[8]),
		.out1_r(stage3_real_out[9]),
		.out1_i(stage3_img_out[9]),
		.out2_r(stage3_real_out[10]),
		.out2_i(stage3_img_out[10]),
		.out3_r(stage3_real_out[11]),
		.out3_i(stage3_img_out[11]),
		.out4_r(stage3_real_out[12]),
		.out4_i(stage3_img_out[12]),
		.out5_r(stage3_real_out[13]),
		.out5_i(stage3_img_out[13]),
		.out6_r(stage3_real_out[14]),
		.out6_i(stage3_img_out[14]),
		.out7_r(stage3_real_out[15]),
		.out7_i(stage3_img_out[15])
	);
	
	//============================== Stage 4 =========================
	//output for stage 4
	//real part
	wire [31:0] stage4_real_out[0:15];
	
	//img part
	wire [31:0] stage4_img_out[0:15];		

	Butterfly16 But16_0
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage3_real_out[0]),
		.in0_i(stage3_img_out[0]),
		.in1_r(stage3_real_out[1]),
		.in1_i(stage3_img_out[1]),
		.in2_r(stage3_real_out[2]),
		.in2_i(stage3_img_out[2]),
		.in3_r(stage3_real_out[3]),
		.in3_i(stage3_img_out[3]),
		.in4_r(stage3_real_out[4]),
		.in4_i(stage3_img_out[4]),
		.in5_r(stage3_real_out[5]),
		.in5_i(stage3_img_out[5]),
		.in6_r(stage3_real_out[6]),
		.in6_i(stage3_img_out[6]),
		.in7_r(stage3_real_out[7]),
		.in7_i(stage3_img_out[7]),
		.in8_r(stage3_real_out[8]),
		.in8_i(stage3_img_out[8]),
		.in9_r(stage3_real_out[9]),
		.in9_i(stage3_img_out[9]),
		.in10_r(stage3_real_out[10]),
		.in10_i(stage3_img_out[10]),
		.in11_r(stage3_real_out[11]),
		.in11_i(stage3_img_out[11]),
		.in12_r(stage3_real_out[12]),
		.in12_i(stage3_img_out[12]),
		.in13_r(stage3_real_out[13]),
		.in13_i(stage3_img_out[13]),
		.in14_r(stage3_real_out[14]),
		.in14_i(stage3_img_out[14]),
		.in15_r(stage3_real_out[15]),
		.in15_i(stage3_img_out[15]),
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[1]),
		.twiddle1_i(twiddle_sin[1]),
		.twiddle2_r(twiddle_cos[2]),
		.twiddle2_i(twiddle_sin[2]),
		.twiddle3_r(twiddle_cos[3]),
		.twiddle3_i(twiddle_sin[3]),
		.twiddle4_r(twiddle_cos[4]),
		.twiddle4_i(twiddle_sin[4]),
		.twiddle5_r(twiddle_cos[5]),
		.twiddle5_i(twiddle_sin[5]),
		.twiddle6_r(twiddle_cos[6]),
		.twiddle6_i(twiddle_sin[6]),
		.twiddle7_r(twiddle_cos[7]),
		.twiddle7_i(twiddle_sin[7]),
		.out0_r(stage4_real_out[0]),
		.out0_i(stage4_img_out[0]),
		.out1_r(stage4_real_out[1]),
		.out1_i(stage4_img_out[1]),
		.out2_r(stage4_real_out[2]),
		.out2_i(stage4_img_out[2]),
		.out3_r(stage4_real_out[3]),
		.out3_i(stage4_img_out[3]),
		.out4_r(stage4_real_out[4]),
		.out4_i(stage4_img_out[4]),
		.out5_r(stage4_real_out[5]),
		.out5_i(stage4_img_out[5]),
		.out6_r(stage4_real_out[6]),
		.out6_i(stage4_img_out[6]),
		.out7_r(stage4_real_out[7]),
		.out7_i(stage4_img_out[7]),
		.out8_r(stage4_real_out[8]),
		.out8_i(stage4_img_out[8]),
		.out9_r(stage4_real_out[9]),
		.out9_i(stage4_img_out[9]),
		.out10_r(stage4_real_out[10]),
		.out10_i(stage4_img_out[10]),
		.out11_r(stage4_real_out[11]),
		.out11_i(stage4_img_out[11]),
		.out12_r(stage4_real_out[12]),
		.out12_i(stage4_img_out[12]),
		.out13_r(stage4_real_out[13]),
		.out13_i(stage4_img_out[13]),
		.out14_r(stage4_real_out[14]),
		.out14_i(stage4_img_out[14]),
		.out15_r(stage4_real_out[15]),
		.out15_i(stage4_img_out[15])
	);

	
	
	
	assign out0_r = stage4_real_out[0];
	assign out0_i = stage4_img_out[0];
	
	assign out1_r = stage4_real_out[1];
	assign out1_i = stage4_img_out[1];
	
	assign out2_r = stage4_real_out[2];
	assign out2_i = stage4_img_out[2];
	
	assign out3_r = stage4_real_out[3];
	assign out3_i = stage4_img_out[3];
	
	
	assign out4_r = stage4_real_out[4];
	assign out4_i = stage4_img_out[4];
	
	assign out5_r = stage4_real_out[5];
	assign out5_i = stage4_img_out[5];
	
	assign out6_r = stage4_real_out[6];
	assign out6_i = stage4_img_out[6];
	
	assign out7_r = stage4_real_out[7];
	assign out7_i = stage4_img_out[7];

	assign out8_r = stage4_real_out[8];
	assign out8_i = stage4_img_out[8];
	
	assign out9_r = stage4_real_out[9];
	assign out9_i = stage4_img_out[9];
	
	assign out10_r = stage4_real_out[10];
	assign out10_i = stage4_img_out[10];
	
	assign out11_r = stage4_real_out[11];
	assign out11_i = stage4_img_out[11];
	
	
	assign out12_r = stage4_real_out[12];
	assign out12_i = stage4_img_out[12];
	
	assign out13_r = stage4_real_out[13];
	assign out13_i = stage4_img_out[13];
	
	assign out14_r = stage4_real_out[14];
	assign out14_i = stage4_img_out[14];
	
	assign out15_r = stage4_real_out[15];
	assign out15_i = stage4_img_out[15];


endmodule

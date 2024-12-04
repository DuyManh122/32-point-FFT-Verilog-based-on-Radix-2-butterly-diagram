module fft_32point (
    input clk,                     	// Clock
    input rst,                   	// Reset
	
	//32 real inputs
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
    input       [31:0]     in16_r,
	input       [31:0]     in17_r,
	input       [31:0]     in18_r,
	input       [31:0]     in19_r,
    input       [31:0]     in20_r,
    input       [31:0]     in21_r,
	input       [31:0]     in22_r,
	input       [31:0]     in23_r,
    input       [31:0]     in24_r,
	input       [31:0]     in25_r,
	input       [31:0]     in26_r,
	input       [31:0]     in27_r,
    input       [31:0]     in28_r,
    input       [31:0]     in29_r,
	input       [31:0]     in30_r,
	input       [31:0]     in31_r,	
	
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
    output      [31:0]     out15_i,

	//17 complex output
    output      [31:0]     out16_r,
    output      [31:0]     out16_i,

	//18 complex output
    output      [31:0]     out17_r,
    output      [31:0]     out17_i,
	
	//19 complex output
    output      [31:0]     out18_r,
    output      [31:0]     out18_i,
	
	//20 complex output
    output      [31:0]     out19_r,
    output      [31:0]     out19_i,

	//21 complex output
    output      [31:0]     out20_r,
    output      [31:0]     out20_i,

	//22 complex output
    output      [31:0]     out21_r,
    output      [31:0]     out21_i,
	
	//23 complex output
    output      [31:0]     out22_r,
    output      [31:0]     out22_i,

	//24 complex output
    output      [31:0]     out23_r,
    output      [31:0]     out23_i,
	
	//25 complex output
    output      [31:0]     out24_r,
    output      [31:0]     out24_i,

	//26 complex output
    output      [31:0]     out25_r,
    output      [31:0]     out25_i,
	
	//27 complex output
    output      [31:0]     out26_r,
    output      [31:0]     out26_i,
	
	//28 complex output
    output      [31:0]     out27_r,
    output      [31:0]     out27_i,

	//29 complex output
    output      [31:0]     out28_r,
    output      [31:0]     out28_i,

	//30 complex output
    output      [31:0]     out29_r,
    output      [31:0]     out29_i,
	
	//31 complex output
    output      [31:0]     out30_r,
    output      [31:0]     out30_i,

	//32 complex output
    output      [31:0]     out31_r,
    output      [31:0]     out31_i
);
    // Internal signal declarations
	wire [31:0] twiddle_sin[0:31];
	wire [31:0] twiddle_cos[0:31];


	//assign base value to complex twiddle by euler formula
	assign twiddle_sin[0] = {32'h00000000};	//0.0
	assign twiddle_sin[1] = {32'h000031f1};	//0.19509032201612825
	assign twiddle_sin[2] = {32'h000061f8};	//0.3826834323650898
	assign twiddle_sin[3] = {32'h00008e3a};	//0.5555702330196022
	assign twiddle_sin[4] = {32'h0000b505};	//0.7071067811865476
	assign twiddle_sin[5] = {32'h0000d4db};	//0.8314696123025452
	assign twiddle_sin[6] = {32'h0000ec83};	//0.9238795325112867
	assign twiddle_sin[7] = {32'h0000fb15};	//0.9807852804032304
	assign twiddle_sin[8] = {32'h00010000};	//1.0
	assign twiddle_sin[9] = {32'h0000fb15};	//0.9807852804032304
	assign twiddle_sin[10] = {32'h0000ec83};	//0.9238795325112867
	assign twiddle_sin[11] = {32'h0000d4db};	//0.8314696123025453
	assign twiddle_sin[12] = {32'h0000b505};	//0.7071067811865476
	assign twiddle_sin[13] = {32'h00008e3a};	//0.5555702330196022
	assign twiddle_sin[14] = {32'h000061f8};	//0.3826834323650899
	assign twiddle_sin[15] = {32'h000031f1};	//0.1950903220161286
	assign twiddle_sin[16] = {32'h00000000};	//1.2246467991473532e-16
	assign twiddle_sin[17] = {32'hffffce0f};	//-0.19509032201612836
	assign twiddle_sin[18] = {32'hffff9e08};	//-0.38268343236508967
	assign twiddle_sin[19] = {32'hffff71c6};	//-0.555570233019602
	assign twiddle_sin[20] = {32'hffff4afb};	//-0.7071067811865475
	assign twiddle_sin[21] = {32'hffff2b25};	//-0.8314696123025452
	assign twiddle_sin[22] = {32'hffff137d};	//-0.9238795325112865
	assign twiddle_sin[23] = {32'hffff04eb};	//-0.9807852804032303
	assign twiddle_sin[24] = {32'hffff0000};	//-1.0
	assign twiddle_sin[25] = {32'hffff04eb};	//-0.9807852804032304
	assign twiddle_sin[26] = {32'hffff137d};	//-0.9238795325112866
	assign twiddle_sin[27] = {32'hffff2b25};	//-0.8314696123025455
	assign twiddle_sin[28] = {32'hffff4afb};	//-0.7071067811865477
	assign twiddle_sin[29] = {32'hffff71c6};	//-0.5555702330196022
	assign twiddle_sin[30] = {32'hffff9e08};	//-0.3826834323650904
	assign twiddle_sin[31] = {32'hffffce0f};	//-0.19509032201612872



	assign twiddle_cos[0] = {32'h00010000};	//1.0
	assign twiddle_cos[1] = {32'h0000fb15};	//0.9807852804032304
	assign twiddle_cos[2] = {32'h0000ec83};	//0.9238795325112867
	assign twiddle_cos[3] = {32'h0000d4db};	//0.8314696123025452
	assign twiddle_cos[4] = {32'h0000b505};	//0.7071067811865476
	assign twiddle_cos[5] = {32'h00008e3a};	//0.5555702330196023
	assign twiddle_cos[6] = {32'h000061f8};	//0.38268343236508984
	assign twiddle_cos[7] = {32'h000031f1};	//0.19509032201612833
	assign twiddle_cos[8] = {32'h00000000};	//6.123233995736766e-17
	assign twiddle_cos[9] = {32'hffffce0f};	//-0.1950903220161282
	assign twiddle_cos[10] = {32'hffff9e08};	//-0.3826834323650897
	assign twiddle_cos[11] = {32'hffff71c6};	//-0.555570233019602
	assign twiddle_cos[12] = {32'hffff4afb};	//-0.7071067811865475
	assign twiddle_cos[13] = {32'hffff2b25};	//-0.8314696123025453
	assign twiddle_cos[14] = {32'hffff137d};	//-0.9238795325112867
	assign twiddle_cos[15] = {32'hffff04eb};	//-0.9807852804032304
	assign twiddle_cos[16] = {32'hffff0000};	//-1.0
	assign twiddle_cos[17] = {32'hffff04eb};	//-0.9807852804032304
	assign twiddle_cos[18] = {32'hffff137d};	//-0.9238795325112868
	assign twiddle_cos[19] = {32'hffff2b25};	//-0.8314696123025455
	assign twiddle_cos[20] = {32'hffff4afb};	//-0.7071067811865477
	assign twiddle_cos[21] = {32'hffff71c6};	//-0.5555702330196022
	assign twiddle_cos[22] = {32'hffff9e08};	//-0.38268343236509034
	assign twiddle_cos[23] = {32'hffffce0f};	//-0.19509032201612866
	assign twiddle_cos[24] = {32'h00000000};	//-1.8369701987210297e-16
	assign twiddle_cos[25] = {32'h000031f1};	//0.1950903220161283
	assign twiddle_cos[26] = {32'h000061f8};	//0.38268343236509
	assign twiddle_cos[27] = {32'h00008e3a};	//0.5555702330196018
	assign twiddle_cos[28] = {32'h0000b505};	//0.7071067811865474
	assign twiddle_cos[29] = {32'h0000d4db};	//0.8314696123025452
	assign twiddle_cos[30] = {32'h0000ec83};	//0.9238795325112865
	assign twiddle_cos[31] = {32'h0000fb15};	//0.9807852804032303
	
	
	//============================== Stage 1 =========================
	
	
	//output for stage 1
	//real part
	wire [31:0] stage1_real_out[0:31];
	
	//img part
	wire [31:0] stage1_img_out[0:31];
	
	Butterfly2 But2_0
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in0_r),
		.in0_i(0),
		.in1_r(in16_r),
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
		.in0_r(in8_r),
		.in0_i(0),
		.in1_r(in24_r),
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
		.in0_r(in4_r),
		.in0_i(0),
		.in1_r(in20_r),
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
		.in0_r(in12_r),
		.in0_i(0),
		.in1_r(in28_r),
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
		.in0_r(in2_r),
		.in0_i(0),
		.in1_r(in18_r),
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
		.in0_r(in10_r),
		.in0_i(0),
		.in1_r(in26_r),
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
		.in0_r(in6_r),
		.in0_i(0),
		.in1_r(in22_r),
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
		.in0_r(in14_r),
		.in0_i(0),
		.in1_r(in30_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[14]),
		.out0_i(stage1_img_out[14]),
		.out1_r(stage1_real_out[15]),
		.out1_i(stage1_img_out[15])
	);
	
	Butterfly2 But2_8
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in1_r),
		.in0_i(0),
		.in1_r(in17_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[16]),
		.out0_i(stage1_img_out[16]),
		.out1_r(stage1_real_out[17]),
		.out1_i(stage1_img_out[17])
	);
	
	Butterfly2 But2_9
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in9_r),
		.in0_i(0),
		.in1_r(in25_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[18]),
		.out0_i(stage1_img_out[18]),
		.out1_r(stage1_real_out[19]),
		.out1_i(stage1_img_out[19])
	);
	
	Butterfly2 But2_10
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in5_r),
		.in0_i(0),
		.in1_r(in21_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[20]),
		.out0_i(stage1_img_out[20]),
		.out1_r(stage1_real_out[21]),
		.out1_i(stage1_img_out[21])
	);

	Butterfly2 But2_11
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in13_r),
		.in0_i(0),
		.in1_r(in29_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[22]),
		.out0_i(stage1_img_out[22]),
		.out1_r(stage1_real_out[23]),
		.out1_i(stage1_img_out[23])
	);
	
	Butterfly2 But2_12
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in3_r),
		.in0_i(0),
		.in1_r(in19_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[24]),
		.out0_i(stage1_img_out[24]),
		.out1_r(stage1_real_out[25]),
		.out1_i(stage1_img_out[25])
	);

	Butterfly2 But2_13
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in11_r),
		.in0_i(0),
		.in1_r(in27_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[26]),
		.out0_i(stage1_img_out[26]),
		.out1_r(stage1_real_out[27]),
		.out1_i(stage1_img_out[27])
	);
	
	Butterfly2 But2_14
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in7_r),
		.in0_i(0),
		.in1_r(in23_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[28]),
		.out0_i(stage1_img_out[28]),
		.out1_r(stage1_real_out[29]),
		.out1_i(stage1_img_out[29])
	);

	Butterfly2 But2_15
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(in15_r),
		.in0_i(0),
		.in1_r(in31_r),
		.in1_i(0),
		.twiddle_r(twiddle_cos[0]),
		.twiddle_i(twiddle_sin[0]),
		.out0_r(stage1_real_out[30]),
		.out0_i(stage1_img_out[30]),
		.out1_r(stage1_real_out[31]),
		.out1_i(stage1_img_out[31])
	);
	//============================== Stage 2 =========================
	
	
	//output for stage 2
	//real part
	wire [31:0] stage2_real_out[0:31];
	
	//img part
	wire [31:0] stage2_img_out[0:31];
	
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
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
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
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
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
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
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
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
		.out0_r(stage2_real_out[12]),
		.out0_i(stage2_img_out[12]),
		.out1_r(stage2_real_out[13]),
		.out1_i(stage2_img_out[13]),
		.out2_r(stage2_real_out[14]),
		.out2_i(stage2_img_out[14]),
		.out3_r(stage2_real_out[15]),
		.out3_i(stage2_img_out[15])
	);

	Butterfly4 But4_4
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[16]),
		.in0_i(stage1_img_out[16]),
		.in1_r(stage1_real_out[17]),
		.in1_i(stage1_img_out[17]),
		.in2_r(stage1_real_out[18]),
		.in2_i(stage1_img_out[18]),
		.in3_r(stage1_real_out[19]),
		.in3_i(stage1_img_out[19]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
		.out0_r(stage2_real_out[16]),
		.out0_i(stage2_img_out[16]),
		.out1_r(stage2_real_out[17]),
		.out1_i(stage2_img_out[17]),
		.out2_r(stage2_real_out[18]),
		.out2_i(stage2_img_out[18]),
		.out3_r(stage2_real_out[19]),
		.out3_i(stage2_img_out[19])
	);

	Butterfly4 But4_5
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[20]),
		.in0_i(stage1_img_out[20]),
		.in1_r(stage1_real_out[21]),
		.in1_i(stage1_img_out[21]),
		.in2_r(stage1_real_out[22]),
		.in2_i(stage1_img_out[22]),
		.in3_r(stage1_real_out[23]),
		.in3_i(stage1_img_out[23]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
		.out0_r(stage2_real_out[20]),
		.out0_i(stage2_img_out[20]),
		.out1_r(stage2_real_out[21]),
		.out1_i(stage2_img_out[21]),
		.out2_r(stage2_real_out[22]),
		.out2_i(stage2_img_out[22]),
		.out3_r(stage2_real_out[23]),
		.out3_i(stage2_img_out[23])
	);
 

	Butterfly4 But4_6
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[24]),
		.in0_i(stage1_img_out[24]),
		.in1_r(stage1_real_out[25]),
		.in1_i(stage1_img_out[25]),
		.in2_r(stage1_real_out[26]),
		.in2_i(stage1_img_out[26]),
		.in3_r(stage1_real_out[27]),
		.in3_i(stage1_img_out[27]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
		.out0_r(stage2_real_out[24]),
		.out0_i(stage2_img_out[24]),
		.out1_r(stage2_real_out[25]),
		.out1_i(stage2_img_out[25]),
		.out2_r(stage2_real_out[26]),
		.out2_i(stage2_img_out[26]),
		.out3_r(stage2_real_out[27]),
		.out3_i(stage2_img_out[27])
	); 
	
	
	Butterfly4 But4_7
	(	
		.clk(clk),
		.rst(rst),
		.in0_r(stage1_real_out[28]),
		.in0_i(stage1_img_out[28]),
		.in1_r(stage1_real_out[29]),
		.in1_i(stage1_img_out[29]),
		.in2_r(stage1_real_out[30]),
		.in2_i(stage1_img_out[30]),
		.in3_r(stage1_real_out[31]),
		.in3_i(stage1_img_out[31]),
		
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[8]),
		.twiddle1_i(twiddle_sin[8]),
		
		.out0_r(stage2_real_out[28]),
		.out0_i(stage2_img_out[28]),
		.out1_r(stage2_real_out[29]),
		.out1_i(stage2_img_out[29]),
		.out2_r(stage2_real_out[30]),
		.out2_i(stage2_img_out[30]),
		.out3_r(stage2_real_out[31]),
		.out3_i(stage2_img_out[31])
	);
	
	//============================== Stage 3 =========================
	//output for stage 3
	//real part
	wire [31:0] stage3_real_out[0:31];
	
	//img part
	wire [31:0] stage3_img_out[0:31];	
	
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
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		.twiddle2_r(twiddle_cos[8]),
		.twiddle2_i(twiddle_sin[8]),
		.twiddle3_r(twiddle_cos[12]),
		.twiddle3_i(twiddle_sin[12]),
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
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		.twiddle2_r(twiddle_cos[8]),
		.twiddle2_i(twiddle_sin[8]),
		.twiddle3_r(twiddle_cos[12]),
		.twiddle3_i(twiddle_sin[12]),
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
	
	Butterfly8 But8_2
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage2_real_out[16]),
		.in0_i(stage2_img_out[16]),
		.in1_r(stage2_real_out[17]),
		.in1_i(stage2_img_out[17]),
		.in2_r(stage2_real_out[18]),
		.in2_i(stage2_img_out[18]),
		.in3_r(stage2_real_out[19]),
		.in3_i(stage2_img_out[19]),
		.in4_r(stage2_real_out[20]),
		.in4_i(stage2_img_out[20]),
		.in5_r(stage2_real_out[21]),
		.in5_i(stage2_img_out[21]),
		.in6_r(stage2_real_out[22]),
		.in6_i(stage2_img_out[22]),
		.in7_r(stage2_real_out[23]),
		.in7_i(stage2_img_out[23]),
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		.twiddle2_r(twiddle_cos[8]),
		.twiddle2_i(twiddle_sin[8]),
		.twiddle3_r(twiddle_cos[12]),
		.twiddle3_i(twiddle_sin[12]),
		.out0_r(stage3_real_out[16]),
		.out0_i(stage3_img_out[16]),
		.out1_r(stage3_real_out[17]),
		.out1_i(stage3_img_out[17]),
		.out2_r(stage3_real_out[18]),
		.out2_i(stage3_img_out[18]),
		.out3_r(stage3_real_out[19]),
		.out3_i(stage3_img_out[19]),
		.out4_r(stage3_real_out[20]),
		.out4_i(stage3_img_out[20]),
		.out5_r(stage3_real_out[21]),
		.out5_i(stage3_img_out[21]),
		.out6_r(stage3_real_out[22]),
		.out6_i(stage3_img_out[22]),
		.out7_r(stage3_real_out[23]),
		.out7_i(stage3_img_out[23])
	);
	
	
	Butterfly8 But8_3
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage2_real_out[24]),
		.in0_i(stage2_img_out[24]),
		.in1_r(stage2_real_out[25]),
		.in1_i(stage2_img_out[25]),
		.in2_r(stage2_real_out[26]),
		.in2_i(stage2_img_out[26]),
		.in3_r(stage2_real_out[27]),
		.in3_i(stage2_img_out[27]),
		.in4_r(stage2_real_out[28]),
		.in4_i(stage2_img_out[28]),
		.in5_r(stage2_real_out[29]),
		.in5_i(stage2_img_out[29]),
		.in6_r(stage2_real_out[30]),
		.in6_i(stage2_img_out[30]),
		.in7_r(stage2_real_out[31]),
		.in7_i(stage2_img_out[31]),
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[4]),
		.twiddle1_i(twiddle_sin[4]),
		.twiddle2_r(twiddle_cos[8]),
		.twiddle2_i(twiddle_sin[8]),
		.twiddle3_r(twiddle_cos[12]),
		.twiddle3_i(twiddle_sin[12]),
		.out0_r(stage3_real_out[24]),
		.out0_i(stage3_img_out[24]),
		.out1_r(stage3_real_out[25]),
		.out1_i(stage3_img_out[25]),
		.out2_r(stage3_real_out[26]),
		.out2_i(stage3_img_out[26]),
		.out3_r(stage3_real_out[27]),
		.out3_i(stage3_img_out[27]),
		.out4_r(stage3_real_out[28]),
		.out4_i(stage3_img_out[28]),
		.out5_r(stage3_real_out[29]),
		.out5_i(stage3_img_out[29]),
		.out6_r(stage3_real_out[30]),
		.out6_i(stage3_img_out[30]),
		.out7_r(stage3_real_out[31]),
		.out7_i(stage3_img_out[31])
	);
	
	
	//============================== Stage 4 =========================
	//output for stage 4
	//real part
	wire [31:0] stage4_real_out[0:31];
	
	//img part
	wire [31:0] stage4_img_out[0:31];		

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
		.twiddle1_r(twiddle_cos[2]),
		.twiddle1_i(twiddle_sin[2]),
		.twiddle2_r(twiddle_cos[4]),
		.twiddle2_i(twiddle_sin[4]),
		.twiddle3_r(twiddle_cos[6]),
		.twiddle3_i(twiddle_sin[6]),
		.twiddle4_r(twiddle_cos[8]),
		.twiddle4_i(twiddle_sin[8]),
		.twiddle5_r(twiddle_cos[10]),
		.twiddle5_i(twiddle_sin[10]),
		.twiddle6_r(twiddle_cos[12]),
		.twiddle6_i(twiddle_sin[12]),
		.twiddle7_r(twiddle_cos[14]),
		.twiddle7_i(twiddle_sin[14]),
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


	Butterfly16 But16_1
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage3_real_out[16]),
		.in0_i(stage3_img_out[16]),
		.in1_r(stage3_real_out[17]),
		.in1_i(stage3_img_out[17]),
		.in2_r(stage3_real_out[18]),
		.in2_i(stage3_img_out[18]),
		.in3_r(stage3_real_out[19]),
		.in3_i(stage3_img_out[19]),
		.in4_r(stage3_real_out[20]),
		.in4_i(stage3_img_out[20]),
		.in5_r(stage3_real_out[21]),
		.in5_i(stage3_img_out[21]),
		.in6_r(stage3_real_out[22]),
		.in6_i(stage3_img_out[22]),
		.in7_r(stage3_real_out[23]),
		.in7_i(stage3_img_out[23]),
		.in8_r(stage3_real_out[24]),
		.in8_i(stage3_img_out[24]),
		.in9_r(stage3_real_out[25]),
		.in9_i(stage3_img_out[25]),
		.in10_r(stage3_real_out[26]),
		.in10_i(stage3_img_out[26]),
		.in11_r(stage3_real_out[27]),
		.in11_i(stage3_img_out[27]),
		.in12_r(stage3_real_out[28]),
		.in12_i(stage3_img_out[28]),
		.in13_r(stage3_real_out[29]),
		.in13_i(stage3_img_out[29]),
		.in14_r(stage3_real_out[30]),
		.in14_i(stage3_img_out[30]),
		.in15_r(stage3_real_out[31]),
		.in15_i(stage3_img_out[31]),
		.twiddle0_r(twiddle_cos[0]),
		.twiddle0_i(twiddle_sin[0]),
		.twiddle1_r(twiddle_cos[2]),
		.twiddle1_i(twiddle_sin[2]),
		.twiddle2_r(twiddle_cos[4]),
		.twiddle2_i(twiddle_sin[4]),
		.twiddle3_r(twiddle_cos[6]),
		.twiddle3_i(twiddle_sin[6]),
		.twiddle4_r(twiddle_cos[8]),
		.twiddle4_i(twiddle_sin[8]),
		.twiddle5_r(twiddle_cos[10]),
		.twiddle5_i(twiddle_sin[10]),
		.twiddle6_r(twiddle_cos[12]),
		.twiddle6_i(twiddle_sin[12]),
		.twiddle7_r(twiddle_cos[14]),
		.twiddle7_i(twiddle_sin[14]),
		.out0_r(stage4_real_out[16]),
		.out0_i(stage4_img_out[16]),
		.out1_r(stage4_real_out[17]),
		.out1_i(stage4_img_out[17]),
		.out2_r(stage4_real_out[18]),
		.out2_i(stage4_img_out[18]),
		.out3_r(stage4_real_out[19]),
		.out3_i(stage4_img_out[19]),
		.out4_r(stage4_real_out[20]),
		.out4_i(stage4_img_out[20]),
		.out5_r(stage4_real_out[21]),
		.out5_i(stage4_img_out[21]),
		.out6_r(stage4_real_out[22]),
		.out6_i(stage4_img_out[22]),
		.out7_r(stage4_real_out[23]),
		.out7_i(stage4_img_out[23]),
		.out8_r(stage4_real_out[24]),
		.out8_i(stage4_img_out[24]),
		.out9_r(stage4_real_out[25]),
		.out9_i(stage4_img_out[25]),
		.out10_r(stage4_real_out[26]),
		.out10_i(stage4_img_out[26]),
		.out11_r(stage4_real_out[27]),
		.out11_i(stage4_img_out[27]),
		.out12_r(stage4_real_out[28]),
		.out12_i(stage4_img_out[28]),
		.out13_r(stage4_real_out[29]),
		.out13_i(stage4_img_out[29]),
		.out14_r(stage4_real_out[30]),
		.out14_i(stage4_img_out[30]),
		.out15_r(stage4_real_out[31]),
		.out15_i(stage4_img_out[31])
	);
	
	//============================== Stage 5 =========================
	//output for stage 5
	//real part
	wire [31:0] stage5_real_out[0:31];
	
	//img part
	wire [31:0] stage5_img_out[0:31];		

	Butterfly32 But32_0
	(
		.clk(clk),
		.rst(rst),
		.in0_r(stage4_real_out[0]),
		.in0_i(stage4_img_out[0]),
		.in1_r(stage4_real_out[1]),
		.in1_i(stage4_img_out[1]),
		.in2_r(stage4_real_out[2]),
		.in2_i(stage4_img_out[2]),
		.in3_r(stage4_real_out[3]),
		.in3_i(stage4_img_out[3]),
		.in4_r(stage4_real_out[4]),
		.in4_i(stage4_img_out[4]),
		.in5_r(stage4_real_out[5]),
		.in5_i(stage4_img_out[5]),
		.in6_r(stage4_real_out[6]),
		.in6_i(stage4_img_out[6]),
		.in7_r(stage4_real_out[7]),
		.in7_i(stage4_img_out[7]),
		.in8_r(stage4_real_out[8]),
		.in8_i(stage4_img_out[8]),
		.in9_r(stage4_real_out[9]),
		.in9_i(stage4_img_out[9]),
		.in10_r(stage4_real_out[10]),
		.in10_i(stage4_img_out[10]),
		.in11_r(stage4_real_out[11]),
		.in11_i(stage4_img_out[11]),
		.in12_r(stage4_real_out[12]),
		.in12_i(stage4_img_out[12]),
		.in13_r(stage4_real_out[13]),
		.in13_i(stage4_img_out[13]),
		.in14_r(stage4_real_out[14]),
		.in14_i(stage4_img_out[14]),
		.in15_r(stage4_real_out[15]),
		.in15_i(stage4_img_out[15]),
		.in16_r(stage4_real_out[16]),
		.in16_i(stage4_img_out[16]),
		.in17_r(stage4_real_out[17]),
		.in17_i(stage4_img_out[17]),
		.in18_r(stage4_real_out[18]),
		.in18_i(stage4_img_out[18]),
		.in19_r(stage4_real_out[19]),
		.in19_i(stage4_img_out[19]),
		.in20_r(stage4_real_out[20]),
		.in20_i(stage4_img_out[20]),
		.in21_r(stage4_real_out[21]),
		.in21_i(stage4_img_out[21]),
		.in22_r(stage4_real_out[22]),
		.in22_i(stage4_img_out[22]),
		.in23_r(stage4_real_out[23]),
		.in23_i(stage4_img_out[23]),
		.in24_r(stage4_real_out[24]),
		.in24_i(stage4_img_out[24]),
		.in25_r(stage4_real_out[25]),
		.in25_i(stage4_img_out[25]),
		.in26_r(stage4_real_out[26]),
		.in26_i(stage4_img_out[26]),
		.in27_r(stage4_real_out[27]),
		.in27_i(stage4_img_out[27]),
		.in28_r(stage4_real_out[28]),
		.in28_i(stage4_img_out[28]),
		.in29_r(stage4_real_out[29]),
		.in29_i(stage4_img_out[29]),
		.in30_r(stage4_real_out[30]),
		.in30_i(stage4_img_out[30]),
		.in31_r(stage4_real_out[31]),
		.in31_i(stage4_img_out[31]),
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
		.twiddle8_r(twiddle_cos[8]),
		.twiddle8_i(twiddle_sin[8]),
		.twiddle9_r(twiddle_cos[9]),
		.twiddle9_i(twiddle_sin[9]),
		.twiddle10_r(twiddle_cos[10]),
		.twiddle10_i(twiddle_sin[10]),
		.twiddle11_r(twiddle_cos[11]),
		.twiddle11_i(twiddle_sin[11]),
		.twiddle12_r(twiddle_cos[12]),
		.twiddle12_i(twiddle_sin[12]),
		.twiddle13_r(twiddle_cos[13]),
		.twiddle13_i(twiddle_sin[13]),
		.twiddle14_r(twiddle_cos[14]),
		.twiddle14_i(twiddle_sin[14]),
		.twiddle15_r(twiddle_cos[15]),
		.twiddle15_i(twiddle_sin[15]),
		.out0_r(stage5_real_out[0]),
		.out0_i(stage5_img_out[0]),
		.out1_r(stage5_real_out[1]),
		.out1_i(stage5_img_out[1]),
		.out2_r(stage5_real_out[2]),
		.out2_i(stage5_img_out[2]),
		.out3_r(stage5_real_out[3]),
		.out3_i(stage5_img_out[3]),
		.out4_r(stage5_real_out[4]),
		.out4_i(stage5_img_out[4]),
		.out5_r(stage5_real_out[5]),
		.out5_i(stage5_img_out[5]),
		.out6_r(stage5_real_out[6]),
		.out6_i(stage5_img_out[6]),
		.out7_r(stage5_real_out[7]),
		.out7_i(stage5_img_out[7]),
		.out8_r(stage5_real_out[8]),
		.out8_i(stage5_img_out[8]),
		.out9_r(stage5_real_out[9]),
		.out9_i(stage5_img_out[9]),
		.out10_r(stage5_real_out[10]),
		.out10_i(stage5_img_out[10]),
		.out11_r(stage5_real_out[11]),
		.out11_i(stage5_img_out[11]),
		.out12_r(stage5_real_out[12]),
		.out12_i(stage5_img_out[12]),
		.out13_r(stage5_real_out[13]),
		.out13_i(stage5_img_out[13]),
		.out14_r(stage5_real_out[14]),
		.out14_i(stage5_img_out[14]),
		.out15_r(stage5_real_out[15]),
		.out15_i(stage5_img_out[15]),
		.out16_r(stage5_real_out[16]),
		.out16_i(stage5_img_out[16]),
		.out17_r(stage5_real_out[17]),
		.out17_i(stage5_img_out[17]),
		.out18_r(stage5_real_out[18]),
		.out18_i(stage5_img_out[18]),
		.out19_r(stage5_real_out[19]),
		.out19_i(stage5_img_out[19]),
		.out20_r(stage5_real_out[20]),
		.out20_i(stage5_img_out[20]),
		.out21_r(stage5_real_out[21]),
		.out21_i(stage5_img_out[21]),
		.out22_r(stage5_real_out[22]),
		.out22_i(stage5_img_out[22]),
		.out23_r(stage5_real_out[23]),
		.out23_i(stage5_img_out[23]),
		.out24_r(stage5_real_out[24]),
		.out24_i(stage5_img_out[24]),
		.out25_r(stage5_real_out[25]),
		.out25_i(stage5_img_out[25]),
		.out26_r(stage5_real_out[26]),
		.out26_i(stage5_img_out[26]),
		.out27_r(stage5_real_out[27]),
		.out27_i(stage5_img_out[27]),
		.out28_r(stage5_real_out[28]),
		.out28_i(stage5_img_out[28]),
		.out29_r(stage5_real_out[29]),
		.out29_i(stage5_img_out[29]),
		.out30_r(stage5_real_out[30]),
		.out30_i(stage5_img_out[30]),
		.out31_r(stage5_real_out[31]),
		.out31_i(stage5_img_out[31])
	);	
	
	assign out0_r = stage5_real_out[0];
	assign out0_i = stage5_img_out[0];
	
	assign out1_r = stage5_real_out[1];
	assign out1_i = stage5_img_out[1];
	
	assign out2_r = stage5_real_out[2];
	assign out2_i = stage5_img_out[2];
	
	assign out3_r = stage5_real_out[3];
	assign out3_i = stage5_img_out[3];
	
	
	assign out4_r = stage5_real_out[4];
	assign out4_i = stage5_img_out[4];
	
	assign out5_r = stage5_real_out[5];
	assign out5_i = stage5_img_out[5];
	
	assign out6_r = stage5_real_out[6];
	assign out6_i = stage5_img_out[6];
	
	assign out7_r = stage5_real_out[7];
	assign out7_i = stage5_img_out[7];

	assign out8_r = stage5_real_out[8];
	assign out8_i = stage5_img_out[8];
	
	assign out9_r = stage5_real_out[9];
	assign out9_i = stage5_img_out[9];
	
	assign out10_r = stage5_real_out[10];
	assign out10_i = stage5_img_out[10];
	
	assign out11_r = stage5_real_out[11];
	assign out11_i = stage5_img_out[11];
	
	
	assign out12_r = stage5_real_out[12];
	assign out12_i = stage5_img_out[12];
	
	assign out13_r = stage5_real_out[13];
	assign out13_i = stage5_img_out[13];
	
	assign out14_r = stage5_real_out[14];
	assign out14_i = stage5_img_out[14];
	
	assign out15_r = stage5_real_out[15];
	assign out15_i = stage5_img_out[15];

	assign out16_r = stage5_real_out[16];
	assign out16_i = stage5_img_out[16];
	
	assign out17_r = stage5_real_out[17];
	assign out17_i = stage5_img_out[17];
	
	assign out18_r = stage5_real_out[18];
	assign out18_i = stage5_img_out[18];
	
	assign out19_r = stage5_real_out[19];
	assign out19_i = stage5_img_out[19];
	
	assign out20_r = stage5_real_out[20];
	assign out20_i = stage5_img_out[20];
	
	assign out21_r = stage5_real_out[21];
	assign out21_i = stage5_img_out[21];
	
	assign out22_r = stage5_real_out[22];
	assign out22_i = stage5_img_out[22];
	
	assign out23_r = stage5_real_out[23];
	assign out23_i = stage5_img_out[23];

	assign out24_r = stage5_real_out[24];
	assign out24_i = stage5_img_out[24];
	
	assign out25_r = stage5_real_out[25];
	assign out25_i = stage5_img_out[25];
	
	assign out26_r = stage5_real_out[26];
	assign out26_i = stage5_img_out[26];
	
	assign out27_r = stage5_real_out[27];
	assign out27_i = stage5_img_out[27];
	
	assign out28_r = stage5_real_out[28];
	assign out28_i = stage5_img_out[28];
	
	assign out29_r = stage5_real_out[29];
	assign out29_i = stage5_img_out[29];
	
	assign out30_r = stage5_real_out[30];
	assign out30_i = stage5_img_out[30];
	
	assign out31_r = stage5_real_out[31];
	assign out31_i = stage5_img_out[31];

endmodule

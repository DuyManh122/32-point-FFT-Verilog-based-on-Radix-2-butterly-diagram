module fft_32point (
    input clk,                     // Clock
    input reset,                   // Reset
	
	
	//1 complex input
    input       [31:0]     in0_r,
    input       [31:0]     in0_i,
	
	//2 complex input
    input       [31:0]     in1_r,
    input       [31:0]     in1_i,
	
	//3 complex input
	input       [31:0]     in2_r,
    input       [31:0]     in2_i,
	
	//4 complex input
	input       [31:0]     in3_r,
    input       [31:0]     in3_i,
	
	//5 complex input
    input       [31:0]     in4_r,
    input       [31:0]     in4_i,
	
	//6 complex input
    input       [31:0]     in5_r,
    input       [31:0]     in5_i,
	
	//7 complex input
	input       [31:0]     in6_r,
    input       [31:0]     in6_i,
	
	//8 complex input
	input       [31:0]     in7_r,
    input       [31:0]     in7_i,
	
	//9 complex input
    input       [31:0]     in8_r,
    input       [31:0]     in8_i,
	
	//10 complex input
    input       [31:0]     in9_r,
    input       [31:0]     in9_i,
	
	//11 complex input
	input       [31:0]     in10_r,
    input       [31:0]     in10_i,
	
	//12 complex input
	input       [31:0]     in11_r,
    input       [31:0]     in11_i,
	
	//13 complex input
    input       [31:0]     in12_r,
    input       [31:0]     in12_i,
	
	//14 complex input
    input       [31:0]     in13_r,
    input       [31:0]     in13_i,
	
	//15 complex input
	input       [31:0]     in14_r,
    input       [31:0]     in14_i,
	
	//16 complex input
	input       [31:0]     in15_r,
    input       [31:0]     in15_i,
	
	//17 complex input
    input       [31:0]     in16_r,
    input       [31:0]     in16_i,
	
	//18 complex input
    input       [31:0]     in17_r,
    input       [31:0]     in17_i,
	
	//19 complex input
	input       [31:0]     in18_r,
    input       [31:0]     in18_i,
	
	//20 complex input
	input       [31:0]     in19_r,
    input       [31:0]     in19_i,
	
	//21 complex input
    input       [31:0]     in20_r,
    input       [31:0]     in20_i,
	
	//22 complex input
    input       [31:0]     in21_r,
    input       [31:0]     in21_i,
	
	//23 complex input
	input       [31:0]     in22_r,
    input       [31:0]     in22_i,
	
	//24 complex input
	input       [31:0]     in23_r,
    input       [31:0]     in23_i,
	
	//25 complex input
    input       [31:0]     in24_r,
    input       [31:0]     in24_i,
	
	//26 complex input
    input       [31:0]     in25_r,
    input       [31:0]     in25_i,
	
	//27 complex input
	input       [31:0]     in26_r,
    input       [31:0]     in26_i,
	
	//28 complex input
	input       [31:0]     in27_r,
    input       [31:0]     in27_i,
	
	//29 complex input
    input       [31:0]     in28_r,
    input       [31:0]     in28_i,
	
	//30 complex input
    input       [31:0]     in29_r,
    input       [31:0]     in29_i,
	
	//31 complex input
	input       [31:0]     in30_r,
    input       [31:0]     in30_i,
	
	//32 complex input
	input       [31:0]     in31_r,
    input       [31:0]     in31_i,

	
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
    reg [4:0] state;               // State variable for bit-reversal
    reg [4:0] index;               // Input index
    reg [4:0] stage;               // Stage variable
    reg [15:0] real_data [31:0];   // Array to hold the real part of the input data
    reg [15:0] imag_data [31:0];   // Array to hold the imaginary part of the input data
    reg [15:0] real_result [31:0]; // Array to hold the real part of the FFT output
    reg [15:0] imag_result [31:0]; // Array to hold the imaginary part of the FFT output
    wire [15:0] twiddle_real, twiddle_imag;
    
	reg [31:0] twiddle_sin[0:31];
	reg [31:0] twiddle_cos[0:31];
	
	initial begin
		twiddle_sin[0] = {32'h00000000};	//0.0
		twiddle_sin[1] = {32'h000031f1};	//0.19509032201612825
		twiddle_sin[2] = {32'h000061f8};	//0.3826834323650898
		twiddle_sin[3] = {32'h00008e3a};	//0.5555702330196022
		twiddle_sin[4] = {32'h0000b505};	//0.7071067811865476
		twiddle_sin[5] = {32'h0000d4db};	//0.8314696123025452
		twiddle_sin[6] = {32'h0000ec83};	//0.9238795325112867
		twiddle_sin[7] = {32'h0000fb15};	//0.9807852804032304
		twiddle_sin[8] = {32'h00010000};	//1.0
		twiddle_sin[9] = {32'h0000fb15};	//0.9807852804032304
		twiddle_sin[10] = {32'h0000ec83};	//0.9238795325112867
		twiddle_sin[11] = {32'h0000d4db};	//0.8314696123025453
		twiddle_sin[12] = {32'h0000b505};	//0.7071067811865476
		twiddle_sin[13] = {32'h00008e3a};	//0.5555702330196022
		twiddle_sin[14] = {32'h000061f8};	//0.3826834323650899
		twiddle_sin[15] = {32'h000031f1};	//0.1950903220161286
		twiddle_sin[16] = {32'h00000000};	//1.2246467991473532e-16
		twiddle_sin[17] = {32'hffffce0f};	//-0.19509032201612836
		twiddle_sin[18] = {32'hffff9e08};	//-0.38268343236508967
		twiddle_sin[19] = {32'hffff71c6};	//-0.555570233019602
		twiddle_sin[20] = {32'hffff4afb};	//-0.7071067811865475
		twiddle_sin[21] = {32'hffff2b25};	//-0.8314696123025452
		twiddle_sin[22] = {32'hffff137d};	//-0.9238795325112865
		twiddle_sin[23] = {32'hffff04eb};	//-0.9807852804032303
		twiddle_sin[24] = {32'hffff0000};	//-1.0
		twiddle_sin[25] = {32'hffff04eb};	//-0.9807852804032304
		twiddle_sin[26] = {32'hffff137d};	//-0.9238795325112866
		twiddle_sin[27] = {32'hffff2b25};	//-0.8314696123025455
		twiddle_sin[28] = {32'hffff4afb};	//-0.7071067811865477
		twiddle_sin[29] = {32'hffff71c6};	//-0.5555702330196022
		twiddle_sin[30] = {32'hffff9e08};	//-0.3826834323650904
		twiddle_sin[31] = {32'hffffce0f};	//-0.19509032201612872



		
		twiddle_cos[0] = {32'h00010000};	//1.0
		twiddle_cos[1] = {32'h0000fb15};	//0.9807852804032304
		twiddle_cos[2] = {32'h0000ec83};	//0.9238795325112867
		twiddle_cos[3] = {32'h0000d4db};	//0.8314696123025452
		twiddle_cos[4] = {32'h0000b505};	//0.7071067811865476
		twiddle_cos[5] = {32'h00008e3a};	//0.5555702330196023
		twiddle_cos[6] = {32'h000061f8};	//0.38268343236508984
		twiddle_cos[7] = {32'h000031f1};	//0.19509032201612833
		twiddle_cos[8] = {32'h00000000};	//6.123233995736766e-17
		twiddle_cos[9] = {32'hffffce0f};	//-0.1950903220161282
		twiddle_cos[10] = {32'hffff9e08};	//-0.3826834323650897
		twiddle_cos[11] = {32'hffff71c6};	//-0.555570233019602
		twiddle_cos[12] = {32'hffff4afb};	//-0.7071067811865475
		twiddle_cos[13] = {32'hffff2b25};	//-0.8314696123025453
		twiddle_cos[14] = {32'hffff137d};	//-0.9238795325112867
		twiddle_cos[15] = {32'hffff04eb};	//-0.9807852804032304
		twiddle_cos[16] = {32'hffff0000};	//-1.0
		twiddle_cos[17] = {32'hffff04eb};	//-0.9807852804032304
		twiddle_cos[18] = {32'hffff137d};	//-0.9238795325112868
		twiddle_cos[19] = {32'hffff2b25};	//-0.8314696123025455
		twiddle_cos[20] = {32'hffff4afb};	//-0.7071067811865477
		twiddle_cos[21] = {32'hffff71c6};	//-0.5555702330196022
		twiddle_cos[22] = {32'hffff9e08};	//-0.38268343236509034
		twiddle_cos[23] = {32'hffffce0f};	//-0.19509032201612866
		twiddle_cos[24] = {32'h00000000};	//-1.8369701987210297e-16
		twiddle_cos[25] = {32'h000031f1};	//0.1950903220161283
		twiddle_cos[26] = {32'h000061f8};	//0.38268343236509
		twiddle_cos[27] = {32'h00008e3a};	//0.5555702330196018
		twiddle_cos[28] = {32'h0000b505};	//0.7071067811865474
		twiddle_cos[29] = {32'h0000d4db};	//0.8314696123025452
		twiddle_cos[30] = {32'h0000ec83};	//0.9238795325112865
		twiddle_cos[31] = {32'h0000fb15};	//0.9807852804032303

	end
	
	
	
	
	

 
endmodule

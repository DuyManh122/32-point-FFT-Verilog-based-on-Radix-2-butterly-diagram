module fft_32points_tb;
    reg clk;                     	// Clock
    reg rst;                		   	
	
	//32 real regs
    reg       [31:0]     in0_r;
	reg       [31:0]     in1_r;
	reg       [31:0]     in2_r;
	reg       [31:0]     in3_r;
    reg       [31:0]     in4_r;
    reg       [31:0]     in5_r;
	reg       [31:0]     in6_r;
	reg       [31:0]     in7_r;
    reg       [31:0]     in8_r;
	reg       [31:0]     in9_r;
	reg       [31:0]     in10_r;
	reg       [31:0]     in11_r;
    reg       [31:0]     in12_r;
    reg       [31:0]     in13_r;
	reg       [31:0]     in14_r;
	reg       [31:0]     in15_r;
    reg       [31:0]     in16_r;
	reg       [31:0]     in17_r;
	reg       [31:0]     in18_r;
	reg       [31:0]     in19_r;
    reg       [31:0]     in20_r;
    reg       [31:0]     in21_r;
	reg       [31:0]     in22_r;
	reg       [31:0]     in23_r;
    reg       [31:0]     in24_r;
	reg       [31:0]     in25_r;
	reg       [31:0]     in26_r;
	reg       [31:0]     in27_r;
    reg       [31:0]     in28_r;
    reg       [31:0]     in29_r;
	reg       [31:0]     in30_r;
	reg       [31:0]     in31_r;	
	
	//1 complex wire
    wire      [31:0]     out0_r;
    wire      [31:0]     out0_i;

	//2 complex wire
    wire      [31:0]     out1_r;
    wire      [31:0]     out1_i;
	
	//3 complex wire
    wire      [31:0]     out2_r;
    wire      [31:0]     out2_i;
	
	//4 complex wire
    wire      [31:0]     out3_r;
    wire      [31:0]     out3_i;

	//5 complex wire
    wire      [31:0]     out4_r;
    wire      [31:0]     out4_i;

	//6 complex wire
    wire      [31:0]     out5_r;
    wire      [31:0]     out5_i;
	
	//7 complex wire
    wire      [31:0]     out6_r;
    wire      [31:0]     out6_i;

	//8 complex wire
    wire      [31:0]     out7_r;
    wire      [31:0]     out7_i;
	
	//9 complex wire
    wire      [31:0]     out8_r;
    wire      [31:0]     out8_i;

	//10 complex wire
    wire      [31:0]     out9_r;
    wire      [31:0]     out9_i;
	
	//11 complex wire
    wire      [31:0]     out10_r;
    wire      [31:0]     out10_i;
	
	//12 complex wire
    wire      [31:0]     out11_r;
    wire      [31:0]     out11_i;

	//13 complex wire
    wire      [31:0]     out12_r;
    wire      [31:0]     out12_i;

	//14 complex wire
    wire      [31:0]     out13_r;
    wire      [31:0]     out13_i;
	
	//15 complex wire
    wire      [31:0]     out14_r;
    wire      [31:0]     out14_i;

	//16 complex wire
    wire      [31:0]     out15_r;
    wire      [31:0]     out15_i;

	//17 complex wire
    wire      [31:0]     out16_r;
    wire      [31:0]     out16_i;

	//18 complex wire
    wire      [31:0]     out17_r;
    wire      [31:0]     out17_i;

	//19 complex wire
    wire      [31:0]     out18_r;
    wire      [31:0]     out18_i;
	
	//20 complex wire
    wire      [31:0]     out19_r;
    wire      [31:0]     out19_i;

	//21 complex wire
    wire      [31:0]     out20_r;
    wire      [31:0]     out20_i;
	
	//22 complex wire
    wire      [31:0]     out21_r;
    wire      [31:0]     out21_i;
	
	//23 complex wire
    wire      [31:0]     out22_r;
    wire      [31:0]     out22_i;

	//24 complex wire
    wire      [31:0]     out23_r;
    wire      [31:0]     out23_i;
	
	//25 complex wire
    wire      [31:0]     out24_r;
    wire      [31:0]     out24_i;

	//26 complex wire
    wire      [31:0]     out25_r;
    wire      [31:0]     out25_i;
	
	//27 complex wire
    wire      [31:0]     out26_r;
    wire      [31:0]     out26_i;
	
	//28 complex wire
    wire      [31:0]     out27_r;
    wire      [31:0]     out27_i;

	//29 complex wire
    wire      [31:0]     out28_r;
    wire      [31:0]     out28_i;

	//30 complex wire
    wire      [31:0]     out29_r;
    wire      [31:0]     out29_i;
	
	//31 complex wire
    wire      [31:0]     out30_r;
    wire      [31:0]     out30_i;

	//32 complex wire
    wire      [31:0]     out31_r;
    wire      [31:0]     out31_i;

	integer  	fd;

	fft_32point FFT32_tb 
	(
		.clk(clk),                     // Clock
		.rst(rst),                 // Reset
		
		.in0_r(in0_r),
		.in1_r(in1_r),
		.in2_r(in2_r),
		.in3_r(in3_r),
		.in4_r(in4_r),
		.in5_r(in5_r),
		.in6_r(in6_r),
		.in7_r(in7_r),
		.in8_r(in8_r),
		.in9_r(in9_r),
		.in10_r(in10_r),
		.in11_r(in11_r),
		.in12_r(in12_r),
		.in13_r(in13_r),
		.in14_r(in14_r),
		.in15_r(in15_r),
		.in16_r(in16_r),
		.in17_r(in17_r),
		.in18_r(in18_r),
		.in19_r(in19_r),
		.in20_r(in20_r),
		.in21_r(in21_r),
		.in22_r(in22_r),
		.in23_r(in23_r),
		.in24_r(in24_r),
		.in25_r(in25_r),
		.in26_r(in26_r),
		.in27_r(in27_r),
		.in28_r(in28_r),
		.in29_r(in29_r),
		.in30_r(in30_r),
		.in31_r(in31_r),
		
		.out0_r(out0_r),
		.out0_i(out0_i),

		.out1_r(out1_r),
		.out1_i(out1_i),

		.out2_r(out2_r),
		.out2_i(out2_i),


		.out3_r(out3_r),
		.out3_i(out3_i),


		.out4_r(out4_r),
		.out4_i(out4_i),


		.out5_r(out5_r),
		.out5_i(out5_i),


		.out6_r(out6_r),
		.out6_i(out6_i),

		.out7_r(out7_r),
		.out7_i(out7_i),
		
		.out8_r(out8_r),
		.out8_i(out8_i),
		
		.out9_r(out9_r),
		.out9_i(out9_i),
		
		.out10_r(out10_r),
		.out10_i(out10_i),
		
		.out11_r(out11_r),
		.out11_i(out11_i),
		
		.out12_r(out12_r),
		.out12_i(out12_i),
		
		.out13_r(out13_r),
		.out13_i(out13_i),
		
		.out14_r(out14_r),
		.out14_i(out14_i),
		
		.out15_r(out15_r),
		.out15_i(out15_i),
		
		.out16_r(out16_r),
		.out16_i(out16_i),
		
		.out17_r(out17_r),
		.out17_i(out17_i),
		
		.out18_r(out18_r),
		.out18_i(out18_i),
		
		.out19_r(out19_r),
		.out19_i(out19_i),
		
		.out20_r(out20_r),
		.out20_i(out20_i),
		
		.out21_r(out21_r),
		.out21_i(out21_i),
		
		.out22_r(out22_r),
		.out22_i(out22_i),
		
		.out23_r(out23_r),
		.out23_i(out23_i),
		
		.out24_r(out24_r),
		.out24_i(out24_i),
		
		.out25_r(out25_r),
		.out25_i(out25_i),
		
		.out26_r(out26_r),
		.out26_i(out26_i),
		
		.out27_r(out27_r),
		.out27_i(out27_i),
		
		.out28_r(out28_r),
		.out28_i(out28_i),
		
		.out29_r(out29_r),
		.out29_i(out29_i),
		
		.out30_r(out30_r),
		.out30_i(out30_i),
		
		.out31_r(out31_r),
		.out31_i(out31_i)
	);
	
	reg [31:0] mem[0:31];
	
	initial begin
        $readmemh("Testbench/hex_value_input_for_fft.txt", mem);
		
	end
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(1);
	end

	initial begin	
		#0 clk = 0;
		forever #1 clk = ~clk;
	end
	
	initial begin
		fd = $fopen("Testbench/result_in_verilog_fft32.txt", "w");
					
		#80
		$fdisplay(fd, "%h", out0_r);
		$fdisplay(fd, "%h", out0_i);
		$fdisplay(fd, "%h", out1_r);
		$fdisplay(fd, "%h", out1_i);
		$fdisplay(fd, "%h", out2_r);
		$fdisplay(fd, "%h", out2_i);
		$fdisplay(fd, "%h", out3_r);
		$fdisplay(fd, "%h", out3_i);
		$fdisplay(fd, "%h", out4_r);
		$fdisplay(fd, "%h", out4_i);
		$fdisplay(fd, "%h", out5_r);
		$fdisplay(fd, "%h", out5_i);
		$fdisplay(fd, "%h", out6_r);
		$fdisplay(fd, "%h", out6_i);
		$fdisplay(fd, "%h", out7_r);
		$fdisplay(fd, "%h", out7_i);
		$fdisplay(fd, "%h", out8_r);
		$fdisplay(fd, "%h", out8_i);
		$fdisplay(fd, "%h", out9_r);
		$fdisplay(fd, "%h", out9_i);
		$fdisplay(fd, "%h", out10_r);
		$fdisplay(fd, "%h", out10_i);
		$fdisplay(fd, "%h", out11_r);
		$fdisplay(fd, "%h", out11_i);
		$fdisplay(fd, "%h", out12_r);
		$fdisplay(fd, "%h", out12_i);
		$fdisplay(fd, "%h", out13_r);
		$fdisplay(fd, "%h", out13_i);
		$fdisplay(fd, "%h", out14_r);
		$fdisplay(fd, "%h", out14_i);
		$fdisplay(fd, "%h", out15_r);
		$fdisplay(fd, "%h", out15_i);
		$fdisplay(fd, "%h", out16_r);
		$fdisplay(fd, "%h", out16_i);
		$fdisplay(fd, "%h", out17_r);
		$fdisplay(fd, "%h", out17_i);
		$fdisplay(fd, "%h", out18_r);
		$fdisplay(fd, "%h", out18_i);
		$fdisplay(fd, "%h", out19_r);
		$fdisplay(fd, "%h", out19_i);
		$fdisplay(fd, "%h", out20_r);
		$fdisplay(fd, "%h", out20_i);
		$fdisplay(fd, "%h", out21_r);
		$fdisplay(fd, "%h", out21_i);
		$fdisplay(fd, "%h", out22_r);
		$fdisplay(fd, "%h", out22_i);
		$fdisplay(fd, "%h", out23_r);
		$fdisplay(fd, "%h", out23_i);
		$fdisplay(fd, "%h", out24_r);
		$fdisplay(fd, "%h", out24_i);
		$fdisplay(fd, "%h", out25_r);
		$fdisplay(fd, "%h", out25_i);
		$fdisplay(fd, "%h", out26_r);
		$fdisplay(fd, "%h", out26_i);
		$fdisplay(fd, "%h", out27_r);
		$fdisplay(fd, "%h", out27_i);
		$fdisplay(fd, "%h", out28_r);
		$fdisplay(fd, "%h", out28_i);
		$fdisplay(fd, "%h", out29_r);
		$fdisplay(fd, "%h", out29_i);
		$fdisplay(fd, "%h", out30_r);
		$fdisplay(fd, "%h", out30_i);
		$fdisplay(fd, "%h", out31_r);
		$fdisplay(fd, "%h", out31_i);
	end
	
	initial begin
		#5  rst = 1'b1;
		#5 	rst = 1'b0;
		#8  rst = 1'b1;
			in0_r = mem[0];
			in1_r = mem[1];
			in2_r = mem[2];
			in3_r = mem[3];
			in4_r = mem[4];
			in5_r = mem[5];
			in6_r = mem[6];
			in7_r = mem[7];
			in8_r = mem[8];
			in9_r = mem[9];
			in10_r = mem[10];
			in11_r = mem[11];
			in12_r = mem[12];
			in13_r = mem[13];
			in14_r = mem[14];
			in15_r = mem[15];
			in16_r = mem[16];
			in17_r = mem[17];
			in18_r = mem[18];
			in19_r = mem[19];
			in20_r = mem[20];
			in21_r = mem[21];
			in22_r = mem[22];
			in23_r = mem[23];
			in24_r = mem[24];
			in25_r = mem[25];
			in26_r = mem[26];
			in27_r = mem[27];
			in28_r = mem[28];
			in29_r = mem[29];
			in30_r = mem[30];
			in31_r = mem[31];

	end
endmodule
		
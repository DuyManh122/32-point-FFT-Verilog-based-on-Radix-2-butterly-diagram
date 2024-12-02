module fft_8points_tb;
	reg 		clk;	                     // Clock
    reg 		rst;  	                	 // Reset
	
	//8 real 
    reg       [31:0]     in0_r;
	reg       [31:0]     in1_r;
	reg       [31:0]     in2_r;
	reg       [31:0]     in3_r;
    reg       [31:0]     in4_r;
    reg       [31:0]     in5_r;
	reg       [31:0]     in6_r;
	reg       [31:0]     in7_r;

    wire      [31:0]     out0_r;
    wire      [31:0]     out0_i;

    wire      [31:0]     out1_r;
    wire      [31:0]     out1_i;
	
    wire      [31:0]     out2_r;
    wire      [31:0]     out2_i;
	
    wire      [31:0]     out3_r;
    wire      [31:0]     out3_i;

    wire      [31:0]     out4_r;
    wire      [31:0]     out4_i;

    wire      [31:0]     out5_r;
    wire      [31:0]     out5_i;
	
    wire      [31:0]     out6_r;
    wire      [31:0]     out6_i;

    wire      [31:0]     out7_r;
    wire      [31:0]     out7_i;

	integer  	fd;

	fft_8point FFT8_tb 
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
		.out7_i(out7_i)
	);
	
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(1);
	end

	initial begin	
		#0 clk = 0;
		forever #1 clk = ~clk;
	end
	
	initial begin
		fd = $fopen("Testbench/result_in_verilog.txt", "w");
					
		#50
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
	end
	
	initial begin
		#5  rst = 1'b1;
		#5 	rst = 1'b0;
		#8  rst = 1'b1;
			in0_r = 32'h00010000;
			in1_r = 32'h00010000;
			in2_r = 32'h00010000;
			in3_r = 32'h00000000;
			in4_r = 32'h00010000;
			in5_r = 32'h00000000;
			in6_r = 32'h00000000;
			in7_r = 32'h00000000;

	end
endmodule
		
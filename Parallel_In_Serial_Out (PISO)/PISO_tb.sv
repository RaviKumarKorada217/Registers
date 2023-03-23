`timescale 1ns / 1ps

module PISO_test();

	// Inputs
	reg [3:0] D;
	reg clk;
	reg load;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	PISO_reg uut ( .D(D), .clk(clk), .load(load), .Q(Q));
	
	always #10 clk = ~clk;
	always #40 load = ~load;
	
	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		load = 0;

		repeat(40)@(posedge clk)
		       D = $random;

		#1000; $finish;	
	end      
endmodule

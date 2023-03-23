`timescale 1ns / 1ps

module PIPO_test();

	// Inputs
	reg [3:0] D;
	reg clk;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	PIPO_reg uut ( .D(D), .clk(clk), .Q(Q));
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;

		repeat(40)@(posedge clk)
		  D=$random;
		#1000; $finish;
	end
      
endmodule

`timescale 1ns / 1ps

module SIPO_test;

	// Inputs
	reg data_in;
	reg clk;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	SIPO_reg uut ( .data_in(data_in), .clk(clk), .Q(Q));
	
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		data_in = 0;
		clk = 0;

		repeat(40)@(posedge clk)
		      data_in = $random;
		
		#1000 $finish;
	end
      
endmodule

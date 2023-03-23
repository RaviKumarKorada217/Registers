`timescale 1ns / 1ps

module SISO_test();

	// Inputs
	reg data_in;
	reg clk;

	// Outputs
	wire data_out;

	// Instantiate the Design Under Test (UUT)
	SISO_reg dut ( .data_in(data_in), .clk(clk), .data_out(data_out));
	
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		data_in = 0;
		clk = 0;

		repeat(40)@(posedge clk)
			data_in = $random;
        
		
		#1000; $finish;
	end
      
endmodule

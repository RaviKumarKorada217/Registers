`timescale 1ns / 1ps

module USR_test();

	// Inputs
	reg clk, data_in_sr, data_in_sl;
	reg [1:0]sel;
	reg [3:0]D;

	// Outputs
	wire [3:0]q;

	// Instantiate the Unit Under Test (UUT)
	Universal_Shift_Register uut ( .clk(clk), .data_in_sr(data_in_sr), .data_in_sl(data_in_sl),
	               .sel(sel), .D(D), .q(q));
	
	always #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		D = 0;
		clk = 0;
		sel = 0;
		data_in_sr = 1;
		data_in_sl = 1;

		repeat(40)@(posedge clk)
		begin
		  D=$random;
		  sel=$random;
		end
		#1000; $finish;
	end
      
endmodule

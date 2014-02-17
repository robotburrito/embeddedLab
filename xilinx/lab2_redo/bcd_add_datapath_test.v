`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:22:29 02/13/2014
// Design Name:   bcd_add_datapath
// Module Name:   C:/Users/vmartin/Documents/GitHub/embeddedLab/xilinx/lab2_redo/bcd_add_datapath_test.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_add_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bcd_add_datapath_test;

	// Inputs
	reg clock;
	reg [6:0] input_value;
	reg init;
	reg load_a;
	reg load_b;
	reg display_a;
	reg display_b;
	reg display_ls;
	reg display_ms;

	// Outputs
	wire init_ack;
	wire load_a_ack;
	wire load_b_ack;
	wire display_a_ack;
	wire display_b_ack;
	wire display_ls_ack;
	wire display_ms_ack;
	wire [7:0] output_value;

	// Instantiate the Unit Under Test (UUT)
	bcd_add_datapath uut (
		.clock(clock), 
		.input_value(input_value), 
		.init(init), 
		.load_a(load_a), 
		.load_b(load_b), 
		.display_a(display_a), 
		.display_b(display_b), 
		.display_ls(display_ls), 
		.display_ms(display_ms), 
		.init_ack(init_ack), 
		.load_a_ack(load_a_ack), 
		.load_b_ack(load_b_ack), 
		.display_a_ack(display_a_ack), 
		.display_b_ack(display_b_ack), 
		.display_ls_ack(display_ls_ack), 
		.display_ms_ack(display_ms_ack), 
		.output_value(output_value)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		input_value = 0;
		init = 0;
		load_a = 0;
		load_b = 0;
		display_a = 0;
		display_b = 0;
		display_ls = 0;
		display_ms = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clock = ~clock;
		
		#20;
		input_value = 4;
		init = 1;
		load_a = 0;
		load_b = 0;
		display_a = 0;
		display_b = 0;
		display_ls = 0;
		display_ms = 0;
		
		clock=~clock;
		#20;
		clock=~clock;
		
		
		#20;
		//input_value = 4;
		init = 0;
		load_a = 1;
		load_b = 0;
		display_a = 0;
		display_b = 0;
		display_ls = 0;
		display_ms = 0;
		
		clock=~clock;
		#20;
		clock=~clock;
		#20;
		
	   //input_value = 4;
		init = 0;
		load_a = 0;
		load_b = 0;
		display_a = 1;
		display_b = 0;
		display_ls = 0;
		display_ms = 0;
		
			
		clock=~clock;
		#20;
		clock=~clock;
		#20;
		
		#20;
	   input_value = 6;
		init = 0;
		load_a = 0;
		load_b = 1;
		display_a = 0;
		display_b = 0;
		display_ls = 0;
		display_ms = 0;
		
			clock=~clock;
		
		#20;
	   input_value = 6;
		init = 0;
		load_a = 0;
		load_b = 0;
		display_a = 0;
		display_b = 1;
		display_ls = 0;
		display_ms = 0;

	end
      
endmodule

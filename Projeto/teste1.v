`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:12:35 11/11/2023
// Design Name:   bcd_balance
// Module Name:   C:/Users/vboxuser/Desktop/trabalho balanca/projetobalancadestavezvaisfuncionar/teste1.v
// Project Name:  projetobalancadestavezvaisfuncionar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd_balance
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module teste1;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] binary_weight;

	// Outputs
	wire [6:0] bcd_weight;
	wire [9:0] price;

	// Instantiate the Unit Under Test (UUT)
	bcd_balance uut (
		.clk(clk), 
		.rst(rst), 
		.binary_weight(binary_weight), 
		.bcd_weight(bcd_weight), 
		.price(price)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		binary_weight = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


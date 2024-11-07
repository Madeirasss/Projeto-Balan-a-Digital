`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:58:14 11/11/2023
// Design Name:   bcd
// Module Name:   C:/Users/vboxuser/Desktop/trabalho balanca/projetobalancadestavezvaisfuncionar/teste2.v
// Project Name:  projetobalancadestavezvaisfuncionar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module teste2;

	// Inputs
	reg [14:0] bin;

	// Outputs
	wire [15:0] bcd;

	// Instantiate the Unit Under Test (UUT)
	bcd uut (
		.bin(bin), 
		.bcd(bcd)
	);

	initial begin
		// Initialize Inputs
		bin = 2000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


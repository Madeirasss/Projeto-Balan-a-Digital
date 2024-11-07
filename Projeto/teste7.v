`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:50:30 11/11/2023
// Design Name:   preco
// Module Name:   C:/Users/vboxuser/Desktop/trabalho balanca/projetobalancadestavezvaisfuncionar/teste7.v
// Project Name:  projetobalancadestavezvaisfuncionar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: preco
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module teste7;

	// Inputs
	reg [15:0] weight_kg;
	reg [15:0] price_per_kg;

	// Outputs
	wire [15:0] total_price;

	// Instantiate the Unit Under Test (UUT)
	preco uut (
		.weight_kg(weight_kg), 
		.price_per_kg(price_per_kg), 
		.total_price(total_price)
	);

	initial begin
		// Initialize Inputs
		weight_kg = 600;
		price_per_kg = 700;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


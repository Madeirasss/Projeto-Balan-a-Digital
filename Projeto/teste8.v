`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:10 11/11/2023
// Design Name:   preco
// Module Name:   C:/Users/vboxuser/Desktop/trabalho balanca/projetobalancadestavezvaisfuncionar/teste8.v
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

module teste8;

	// Inputs
	reg [31:0] peso;
	reg [31:0] preco;

	// Outputs
	wire [31:0] saida_peso;
	wire [31:0] saida_preco;

	// Instantiate the Unit Under Test (UUT)
	preco uut (
		.peso(peso), 
		.preco(preco), 
		.saida_peso(saida_peso), 
		.saida_preco(saida_preco)
	);

	initial begin
		// Initialize Inputs
		peso = 1530;
		preco = 149;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:24 11/11/2023
// Design Name:   pesosemtara
// Module Name:   C:/Users/vboxuser/Desktop/trabalho balanca/projetobalancadestavezvaisfuncionar/teste9.v
// Project Name:  projetobalancadestavezvaisfuncionar
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pesosemtara
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module teste9;

	// Inputs
	reg [15:0] entrada;

	// Outputs
	wire [15:0] resultado;

	// Instantiate the Unit Under Test (UUT)
	pesosemtara uut (
		.entrada(entrada), 
		.resultado(resultado)
	);

	initial begin
		// Initialize Inputs
		entrada = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


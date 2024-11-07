`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:29 11/11/2023 
// Design Name: 
// Module Name:    peso_sem_tara 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pesosemtara(
        input [15:0] entrada, 
		  output reg signed [15:0] resultado);

   // Constante a ser subtraída
   parameter CONSTANTE = 50; // o preço foi calculado na calculadora, n de aluno 2052923

   always @(*) begin
      resultado = entrada - CONSTANTE;
   end

endmodule
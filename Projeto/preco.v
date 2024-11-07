`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:39 11/11/2023 
// Design Name: 
// Module Name:    preco 
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
module preco(
    input wire [31:0] peso, // Peso em gramas
    input wire [31:0] preco, // Preço por kg em cêntimos
    output reg [31:0] saida_peso, // Peso em formato BCD (2 decimal places)
    output reg [31:0] saida_preco // Preço em formato BCD (2 decimal places)
);

// Function to convert from decimal to BCD
function [31:0] decimalToBCD(input [31:0] dec);
    integer i;
    reg [31:0] bcd;
    reg [31:0] carry;
    begin
        bcd = 0;
        carry = 0;
        for (i = 0; i < 32; i = i + 1) begin
            if (dec[i] == 1) begin
                if (carry == 0) begin
                    bcd[i] = 1;
                end else begin
                    bcd[i] = 0;
                    carry = carry + 1;
                end
            end else begin
                bcd[i] = 0;
            end
        end
        decimalToBCD = bcd;
    end
endfunction

// Convert peso from grams to kg with 2 decimal places
wire [31:0] peso_kg = peso / 1000;

// Convert preco from cêntimos to euros with 2 decimal places
wire [31:0] preco_euros = preco / 100;

// Calculate the final price
wire [31:0] preco_final = peso_kg * preco_euros;

// Convert the final price to BCD format
wire [31:0] preco_final_bcd = decimalToBCD(preco_final);

// Convert the weight to BCD format
wire [31:0] peso_kg_bcd = decimalToBCD(peso_kg);

// Assign the output values
always @(*) begin
    saida_peso = peso_kg_bcd;
    saida_preco = preco_final_bcd;
end

endmodule
`timescale 1ns/1ns

`include "Convert.v"  //including module Convert and module ALU.
`include "ALU.v"

module CU(result, instruction);

	input [18:0] instruction;
	output [7:0] result;
	wire [7:0] select;
	wire [7:0] operand1;
	wire [7:0] operand2;

	//Using Convert 3 8 bit buses are created which are then sent as input to the ALU which gives the result of 8 bits.

	Convert cv1(operand1, operand2, select, instruction);
	ALU alu1(result, operand1, operand2, select);
	
endmodule 

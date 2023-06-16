`timescale 1ns/1ns

`include "Decoder.v"        //including Decoder module.

module Convert(output [7:0] operand1, operand2, select, input [18:0] instruction);  //This module is to separate 3 8 bit buses from 19 bit input.

    wire [2:0] operation;
    assign operation = instruction[18:16]; //Assigning operation from instruction.
    assign operand1 = instruction[15:8];   //Assigning operand1 from instruction.
    assign operand2 = instruction[7:0];    //Assigning operand2 from instruction.
    Decoder decode(select, operation);     // 3*8 decoder to get 8 bit select bus from 3 bit operation.
    
endmodule
`timescale 1ns/1ns

`include "CU.v"

module cu_tb;
    reg[18:0] instruction;
    wire[7:0] result;

    CU cu1(result, instruction);

    initial begin
        $dumpfile("cu_tb.vcd");
        $dumpvars(0, cu_tb);

        instruction = 19'b0010010001100010100; #20; //Addition
        instruction = 19'b0100010001100010100; #20; //Subtraction
        instruction = 19'b0110010001100010100; #20; //Increment
        instruction = 19'b1000010001100010100; #20; //Decrement
        instruction = 19'b1010010001100010100; #20; //AND
        instruction = 19'b1100010001100010100; #20; //OR
        instruction = 19'b1110010001100010100; #20; //NOT
        
        #20 $finish;
    end

endmodule
`timescale 1ns/1ns

module Decoder(output [7:0] select, input [2:0] operation);   //This is a 3*8 decoder. Gives 8 bit select bus from 3 bit input.

    wire [2:0] p;

    nor  (select[0], operation[2], operation[1]);            // Logics for each bit in select bus after decoding.

    nor  (select[1], operation[2], operation[0]);

    not  (p[0], operation[2]);
    and  (select[2], operation[1], operation[0], p[0]);

    nor  (select[3], operation[1], operation[0]);
   
    not  (p[1], operation[1]);
    and  (select[4], operation[2], operation[0], p[1]);

    not  (p[2], operation[0]);
    and  (select[5], operation[2], operation[1], p[2]);

    and  (select[6], operation[2], operation[1], operation[0]);

    assign select[7]=0;

endmodule
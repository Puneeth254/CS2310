`timescale 1ns/1ns

module MUX2(output [7:0] result, input [7:0] result1, result2, result3, result4, select); 

    //This module is to find the final result from the four inputs and select bus.

    wire q;
    wire [7:0] r1, r2, r3, r4, r5, r6;

    or (q, select[0], select[1], select[2], select[3]); //This is to find whether the operation is [Add, Sub, Inc, Dec] or [AND, NOT, OR].

    //These A18 are used to find which operation is being peformed.
    //A18 is an AND of 1 bit and 8 bit.
    //If the respective select bit is 0 then all the output bits become 0's else the result gets copied.

    A18 a5(r1, result1, q);
    A18 a6(r2, result2, select[4]);
    A18 a7(r3, result3, select[5]);
    A18 a8(r4, result4, select[6]);

    //OR8 gates used to find the final result.

    OR8 o4(r5, r1, r2);
    OR8 o5(r6, r3, r4);
    OR8 o6(result, r5, r6);

endmodule
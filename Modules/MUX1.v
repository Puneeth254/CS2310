`timescale 1ns/1ns

module MUX1(output[7:0] op2, input[7:0] operand2, select); //This module is to select second operand for ADD among 4 possibilities.

    wire [7:0] s1, s2, r1, r2, r3, r4, t1;

    //select[3:0] are used as select bits in this MUX1.
    //r1, r2, r3, r4 are results after performing A18 with respective bits from select.

    A18 a1(r1, operand2, select[0]);        // select[0] is for Addition. So, r1 = operand2 if select[0] = 1 or r1 = 00000000 if select[0] = 0.
    TC tc1(t1, operand2);                   // t1 is the two's compliment of operand2.
    A18 a2(r2, t1, select[1]);              // select[1] is for Subtraction. So, r2 = t1 if select[1] = 1 or r2 = 00000000 if select[1] = 0.
    A18 a3(r3, 8'b00000001, select[2]);     // select[2] is for INC. So, r3 = 00000001 if select[2] = 1 or r3 = 00000000 if select[2] = 0.
    A18 a4(r4, 8'b11111111, select[3]);     // select[3] is for Dec. So, r4 = 11111111 if select[3] = 1 or r4 = 00000000 if select[4] = 0.

    // Only one of those r1, r2, r3, r4 contains 1's[If operation need to be performed is Addition, Subtraction, Increment or Decrement]. All others contains 0's.
    // OR8 is used to find op2 from r1, r2, r3, r4.

    OR8 o1(s1, r1, r2);                     
    OR8 o2(s2, r3, r4);
    OR8 o3(op2, s1, s2);

endmodule
`timescale 1ns/1ns

module A18(output[7:0] result, input[7:0] inp, input c);  //This module is to perform and for 1 bit and 8 bit inputs.

 //each bit of result is and of each bit of inp with c.

    and (result[0], inp[0], c);
    and (result[1], inp[1], c);
    and (result[2], inp[2], c);
    and (result[3], inp[3], c);
    and (result[4], inp[4], c);
    and (result[5], inp[5], c);
    and (result[6], inp[6], c);
    and (result[7], inp[7], c);

endmodule
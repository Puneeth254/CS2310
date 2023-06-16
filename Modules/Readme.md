All files that need to be included are already included in those modules.

Below are the files that are present in the module.

A18.v   -  included in ALU.v
ADD.v   -  included in ALU.v
ALU.v   -  included in CU.v
AND8.v  -  included in ALU.v
Convert.v  -  included in CU.v
Decoder.v  -  included in Convert.v
FullAdder.v  -  included in ADD.v
HalfAdder.v  -  included in FullAdder.v
MUX1.v  -  included in ALU.v
MUX2.v  -  included in ALU.v
NOT8.v  -  included in TC.v
OR8.v   -  included in ALU.v
TC.v    -  included in ALU.v

CU.v    -   included in the testbench

Below are the instructions to run the codes from the folder "Modules". ($ represents the instruction not to be wriiten in the command prompt.)

$ iverilog cu_tb.v

After the above instruction,
$ vvp a.out

A dumpfile cu_tb.vcd will be created.Give the below instruction to get wave to analyse the working of CPU.
$ gtkwave cu_tb.vcd &


// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R2 //RAM[2] = 0
M=0
(LOOP)
@R1 //RAM [1]
D=M
@END
D;JEQ //if (RAM[1] == 0) END
@R0 // RAM [0]
D=M
@END
D;JEQ //if (RAM[0] == 0) END
@R2
D=M
// R2 = R2 + R0
@R0
D=D+M
@R2
M=D
@R1
M=M-1
@LOOP
0;JMP
(END)
@END
0;JMP

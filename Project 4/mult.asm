// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

	@R0 //iterate
	D=M
	@R1 //n
	D=M
	@R2 //sum
	M=0
	
	@R0
	D=M
	@PC
	M=D

(LOOP)
	@PC
	M;JLE

	@R1
	D=M
	@R2
	M=D+M

	@PC
	M = M-1
	
	@LOOP
	0;JMP

(END)
	@END
	0;JMP
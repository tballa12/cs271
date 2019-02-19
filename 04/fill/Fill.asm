// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.


(Restart) // Label

@SCREEN // Place screen address (16384) in A register.

D=A // Places screen address (16384) in D register .

@Location // address Variable to RAM address 16 and place address in A register.

M=D // Places Value (16384) in RAM address 16.


(Loop) // Label

@KBD // Places keyboard address 25576 in register A.

D=A // Places Value of Keyboard address 25576 in Register D.

@Location // Places screen address value (modified) in resister A.

D=D-M // Take value in D and minueses value stored in RAM location found in Register A.

@ Restart // adrress Varibale to RAM address 17 and Places address in A reg.

D;JEQ // Compares D to 0 if equeal jumps to address in A reg.

@Location // Places screen address value (modified) in reg A.

A=M // Points to RAM address in Reg A.

M=0 // Places 0 in RAM address.

@KBD // Places Keyboard address 25576 in reg A.

D=M // Places value found @ RAM address 25576 in reg D.

@increment // Creates Var to RAM address 18 and places in A reg.

D;JEQ // Compares value in KBD to zero if true keep white

@Location // Places screen address value (modified) in reg A.

A=M // Points to RAM address in Reg A.

M=-1 // Places -1 in RAM address.

(increment) // Label

@Location // Places screen address value (modified) in reg A.

M=M+1 // addess on to value in RAM address in reg A.

@Loop // adrress Varibale to RAM address 18 and Places address in A reg.

0;JMP // Auto jmp to address in reg A.








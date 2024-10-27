.global _start
_start:
	
.section .data

//These lines each allocate a 32bit word in memory for use in the program, and the leading names are variable names
var1: .word 5
sum: .word 0

//The code section
.text

//Load register 0 with the memory location of the variable var1 (not the value in that location)
ldr r0,=var1

//Load register 1 with the value in in the memory location defined by register 0
ldr r1,[r0]

//add the immediate 3 with the value in register 1 and place the value in register 3
add r3,r1,#3

//Load register 0 with the memory location of the variable sum
ldr r0,=sum

//Store the value in register 3 in the memory location implied by register 0 (by the previous instruction, this is the memory location of the variable sum)
str r3,[r0]

.end
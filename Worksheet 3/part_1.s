/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Complete the below for Part 1.

Start by writing a simple ARM assembly program that declares two functions: main and function1.
In main, call function1. Within function1, use the PUSH instruction to save the value of register r0 to the stack, modify r0, and then use the POP instruction to restore its original value.
Question: What happens to the value of r0 when you push it to the stack, modify it in the function, and then pop it back?

*/

.global _start
_start:

.text
//Instructions Here

mov r0,#5
ldr r12, =0xff201000 // Location of the IO buffer for the JTAG UART

main:
    bl function1
    b stop

function1:
    push {r0}
    mov r0,#7
    pop {r0}
    bx lr

stop:
.end
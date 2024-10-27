/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Complete the below for Lab 8.

Q1 - Write an ARM assembly program with three functions: one (name it as swap) to swap values
between two registers, R1 and R2. The second (named minus) is to find R1 - R2, and the third
(named store) is to store the difference in variable diff. Call the functions in the given order
swap()
minus()
swap()
store()



*/

.global _start
_start:

.text
//Instructions Here

mov r1,#4
mov r2,#7

bl swap
bl minus
bl swap
bl store

swap:
    mov r4,r1
    mov r1,r2
    mov r2,r4
    bx lr

minus:
    sub r0,r1,r2
    bx lr

store:
    ldr r5,=diff
    ldr r0,[r5] // Data is getting over written, FIX ME
    bx lr
	

.section .bss
//Uninitialized Variables Here
diff: .space 4

stop:
.end
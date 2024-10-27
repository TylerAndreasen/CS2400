/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Example of passing by value. Taken from slides provided by Prof. Rajan.
*
*
*
*
*/

.global _start
_start:

.text
//Instructions Here
    ldr r0,=a
    ldr r0,[r0]
    ldr r1,=b
    ldr r1,r1

    bl sum
    b stop

sum:
    add r2,r1,r0
    bx lr
stop:
	
.section .data
//Predefined Variables Here
a: .word 5
b: .word 10


.end
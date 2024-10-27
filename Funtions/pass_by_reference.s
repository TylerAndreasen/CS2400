/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Example of passing by reference. Taken from slides provided by Prof. Rajan.
*
*
*
*
*/

.global _start
_start:

.text
//Instructions Here
    ldr 0r,=a
    ldr r1,=b

    bl sum
    b stop

sum:
    ldr r0,[r0]
    ldr r1,r1
    add r2,r1,r0
    bx lr
stop:

	
.section .data
//Predefined Variables Here
a: .word 5
b: .word 10


.end
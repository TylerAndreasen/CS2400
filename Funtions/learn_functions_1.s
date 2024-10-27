/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*
*
*
*/

.global _start
_start:

.text
//Instructions Here

    mov r0,#10
    mov r1,#3
    bl sum
    bl diff
    b stop

sum:
    add r5,r0,r1    // Call by value
    bx lr

diff:
    sub r6,r0,r1    // Call by value
    bx lr
    

stop:
.end
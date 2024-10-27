/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*
while (r0 < 100) r0 = r0 +1
*
*
*/

.global _start
_start:

.text

//Instructions Here

mov r0,#0
loop1:
    cmp r0,#100
    beq endloop // may be `bge endloop`
    addlt r0,r0,#1
    b loop1
endloop:

.end
/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*
int i;
for (i = 1; i <= 10; i++) sum = sum + i;
Assume i is r0 and sum is r2.
*
*
*/

.global _start
_start:

.text

//Instructions Here

mov r0,#1
look:
    cmp r0,#10 // **I had `10` not `#10`
    bgt endfor
    add r2,r2,r0
    add r0,r0,#1
    b look
endfor:

.end
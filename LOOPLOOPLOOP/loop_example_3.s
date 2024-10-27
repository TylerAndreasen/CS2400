/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Computes the following
x = 0
for (i = 5, j = 0, i > 1 && j < 4; i--; j++)
{
    x = x + 1
}
*/

.global _start
_start:

.text
//Instructions Here

//r0 > i, r1 > j, r2 > x


mov r0, #5
mov r1, #0
mov r2, #0

startLoop:
    cmp r0, #1
    ble endLoop
    cmp r1, #4
    bge endLoop

    add r2, r2, #1
    sub r0, r0, #1 
    add r1, r1, #1

    b startLoop
endLoop:


.end
/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*
r0 = 100
while (r0 >= 0) r0 = r0 - 1;
*
*
*/

.global _start
_start:

.text

//Instructions Here

mov r0,#100
test:
    cmp r0,#0
    subge r0,r0,#1 // may be `subgt ...`
    blt test
endloop:

.end
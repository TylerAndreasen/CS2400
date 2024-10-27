/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*       x = 1
*       (while <= 5)
*           x++;
*   Now with conditional instructions.
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
x: .word 1

.section .bss

//Uninitialized Variables Here
var2: .space 4

.text

//Instructions Here
ldr r0,=x
ldr r1,[r0]

loop:
    cmp r1,#5
    addle r1,r1,#1
    blt loop
ENDLOOP:

.end
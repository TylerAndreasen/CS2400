/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*       x = 1
*       (while <= 5)
*           x++;
*
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
    cmp r3,#5
    bgt ENDLOOP
    add r3, r3, #1
    b loop
ENDLOOP:

.end
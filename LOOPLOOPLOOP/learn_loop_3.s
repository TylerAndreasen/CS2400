/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.

x = 10
while (x > 0)
    x--;

*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
x: .word 10

.section .bss

//Uninitialized Variables Here
var2: .space 4

.text

mov r0, #10

loop:
    cmp r0, #0
    subgt r0,#1
    bgt loop

//Instructions Here


.end
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
	
.section .data

//Predefined Variables Here
var1: .word 9

.section .bss

.text

//Instructions Here

// if (a == 10) { b = 4; }
// else { b = 3}

    mov r0,#9
    cmp r0,#10
    bgt assign4
    mov r1,#3
    b quit
assign4:
    mov r1,#4
quit:
.end
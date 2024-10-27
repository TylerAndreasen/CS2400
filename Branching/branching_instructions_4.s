/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A clone of branching_4.s using conditional statements in place of
* branch statements.
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
    moveq r1,#4
    movne r1,#3

.end
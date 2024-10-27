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


.section .bss



.text

//Instructions Here

// if (a==10) { b = 4; }

    mov r0,#10 //r0 is a
    cmp r0,#10
    bne dontAssignB
    mov r1,#4
dontAssignB:

.end
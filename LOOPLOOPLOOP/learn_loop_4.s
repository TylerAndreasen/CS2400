/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A reimplementation of a previous attempt, now using pre-indexing
*           load instructions.
*
*
*
*
*/

.global _start
_start:

.text
//Instructions Here

//r0 > array pointer, r1 > result, r2 > loaded value

ldr r0,=array


startLoop:
    cmp r0, #0x2C
    bgt endLoop
    ldr r2, [r0], #4
    add r1, r1, r2
    b startLoop
endLoop:

	
.section .data
//Predefined Variables Here
array: .word 4, 2, 1, 1


.section .bss
//Uninitialized Variables Here
result: .space 4


.end
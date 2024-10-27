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
arr: .word 4,2,1,1

.align

.section .bss

//Uninitialized Variables Here
result: .space 4
.align

.text

//Instructions Here
// r0 - array pointer
// r1 - immediate 4
// r2 - running total
// r3 - next value
// r4 - index

ldr r0,=arr
mov r1,#4

loop:
    ldr r3,[r0,r4]
    add r2,r2,r3
    add r4,r4,r1
    cmp r4,#16
    beq endloop
    b loop
endloop:

.end
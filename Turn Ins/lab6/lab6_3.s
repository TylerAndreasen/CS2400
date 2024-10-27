/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
* Implements using branching instructions
*       if (i == j && i == k ) {
*            i++;
*       } else {
*            j--;
*       }
*       j = i + k;
* Note: The cannonical answer has the addeq and subne instructions reversed,
* this may not matter, and on reflection it really shouldn't.
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
i: .word 1
j: .word 2
k: .word 3

.section .bss
.text

ldr r0,=i
ldr r0[r0]
ldr r1,=j
ldr r1[r1]
ldr r2,=k
ldr r2[r2]

//Instructions Here

cmp r0, r1
    cmpne r0, r2
    subne r0,r0,#1
    addeq r0,r0,#1
add r1, r0, r2

.end
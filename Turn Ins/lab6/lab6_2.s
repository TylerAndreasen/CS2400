/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Taken from Professor Rajan.
* Implements using branching instructions
*       if (i == j && i == k ) {
*            i++;
*       } else {
*            j--;
*       }
*       j = i + k;
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
    cmpeq r0, r2
    addeq r0,r0,#1
    subne r0,r0,#1
add r1, r0, r2

.end
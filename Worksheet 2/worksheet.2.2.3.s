/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A smaller Assembly file for Worksheet 2.2 Question 3.
*
*
*
*
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
A: .word 0xAAABBBCC
MASK: .word 0xFFE003FF

.section .bss

.text

//Instructions Here

ldr r0,=A
ldr r1,[r0]
ldr r0,=MASK
ldr r2,[r0]
bic r3,r1,r2


.end
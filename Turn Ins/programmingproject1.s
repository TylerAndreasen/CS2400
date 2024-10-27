/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: ARM Assembly code to solve the equation:
*       f(g) = 5g * 2 - 6g + 8
*
* where g has the decimal value 20.
*
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
g: .word 20
five: .word 5
two: .word 2
six: .word 6
eight: .word 8

.section .bss

//Uninitialized Variables Here
y: .space 8

.text

//Instructions Here

ldr r0,=g
ldr r1,[r0]
ldr r0,=five
ldr r2,[r0]
ldr r0,=two
ldr r3,[r0]
ldr r0,=six
ldr r4,[r0]
ldr r0,=eight
ldr r5,[r0]

nop

mul r6,r1,r2 // (5 * g)
mul r6,r6,r3 // (5g * 2)
mul r7,r1,r4 // (6 * g)
sub r8,r6,r7 // (10g)-(6g)
add r9,r8,r5 // (4g)+8

ldr r0,=y
str r9,[r0] // Should be 88-dec // 58-hex




.end
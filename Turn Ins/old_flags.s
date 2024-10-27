/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: An ARM Assembly file which contains instructions which in sequence
* raise the negative flag (N), carry flag (C), zero flag (Z), and overflow flag
* (V).
* The repeated command of the instruction MSR was sourced from:
* https://stackoverflow.com/questions/17077857/precisely-when-are-arms
* -condition-flags-cleared-modified
*
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
a: .word 5
b: .word 10
c: .word 0xffffffff
d: .word 1

.text

//Instructions Here

ldr r0,=a
ldr r1,[r0]
ldr r0,=b
ldr r2,[r0]
ldr r0,=c
ldr r3,[r0]
ldr r0,=d
ldr r4,[r0]


//Aritmetic
//Negative, success
subs r6,r1,r2

MSR APSR_nzcvq, #0x00000000 // clear all flags?

//carry, fail zero and carry
adds r7,r3,r4

MSR APSR_nzcvq, #0x00000000 // clear all flags?

//zero, success
movs r8,#0

MSR APSR_nzcvq, #0x00000000 // clear all flags?

//Overflow, fail none
adds r9,r4,r5

MSR APSR_nzcvq, #0x00000000 // clear all flags?


.end
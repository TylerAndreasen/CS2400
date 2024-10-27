/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Written to aid in the completeion of the Computer Organization
* Worksheet 2.2.
* The instruction 'nop' is used to pause execution to see the effect of an instruction more easily.
*
*
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
//Question 1.
RRR5: .word 0xa5d
RRR6: .word 0x63C
F: .word 0x5f

//Question 3.
A: .word 0xaaabbbcc
MASK: .word 0xFFE003FF

//Question 4.
RRRR5: .word 0xaf000a5d
RRRR6: .word 6

//Question 7.
a: .word 3
c: .word 7 

.section .bss

//Uninitialized Variables Here
//Question 7.
Z: .space 4
var2: .space 4

.text

//Instructions Here

//Question 1.a-g.
ldr r0,=RRR5
ldr r5,[r0]
ldr r0,=RRR6
ldr r6,[r0]
ldr r0,=F
ldr r7,[r0]

nop //a.

and r4,r5,r6

nop //r4 should be 0x21c, b.

and r4,r5,r7

nop //c. 

orr r4,r5,r6

nop //d.

orr r4,r5,r7

nop //e.

eor r4,r5,r6

nop //f.

eor r4,r5,r7

nop //g.

bic r4,r5,r6

nop

mov r0,#0
mov r4,#0
mov r5,#0
mov r6,#0
mov r7,#0

nop

//2. 

mov r2,#2
mov r3,#4

EOR R2, R2, R3 
EOR R3, R2, R3 
EOR R2, R2, R3

nop

mov r2,#0
mov r3,#0

nop

//3.

ldr r0,=A
ldr r1,[r0]
ldr r0,=MASK
ldr r2,[r0]
bic r3,r1,r2

nop

mov r0,#0
mov r1,#0
mov r2,#0
mov r3,#0

nop

//4.a-h.

ldr r0,=RRRR5
ldr r5,[r0]
ldr r0,=RRRR6
ldr r6,[r0]

nop

//a.
lsl r4,r5,#3

nop //Should be 780052e8

//b.
lsl r4,r5,r6

nop //Should be c0029740

//c.
lsr r4,r5,#3

nop //Should be 15e0014b

//d.
lsr r4,r5,r6

nop

//e.
ASR R4, R5, #3

nop

//f.
ASR R4, R5, R6

nop

//g.
ROR R4, R5, #3

nop

//h.
ROR R4, R5, R6

nop

mov r0,#0
mov r4,#0
mov r5,#0
mov r6,#0

nop


//5.a-b. Note: answers should be written in decimal, and c is all words.

mov r0,#28

//a.
lsl r1,r0,#3

nop

//b.
lsr r2,r0,#3

nop

mov r0,#0
mov r1,#0
mov r2,#0

nop


// 6. An arithmetic shift left is identical to a logical shift left because
//    the any lead negative is pushed out of the value, where it is maintained
//    in a right shifts.


//7. Note: no values are given for a or c so 3 and 7 are used respectively.


ldr r0,=a
ldr r1,[r0]
ldr r0,=c
ldr r2,[r0]


lsl r3,r1,#2
and r4,r2,#15
orr r5, r3, r4

ldr r0,=Z
str r5,[r0]

nop

mov r0,#0
mov r1,#0
mov r2,#0
mov r3,#0
mov r4,#0
mov r5,#0

.end
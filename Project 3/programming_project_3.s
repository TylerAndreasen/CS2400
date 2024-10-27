/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Complete the following steps.

NOTE:: Apologies for the clobbering of various registers.

1) Define a string (any string) in the variable myStr

2) Using assembly code, write a sub-procedure StrCount to find the number of 
words in the string. Return the word count using register R1.

3) In the main function, check if the number of words is an even number; if 
even, store integer 1 in variable a variable even, and if it is odd, store 1 in
variable odd.

*
*/

.global _start
_start:

.text
//Instructions Here

main:
    //r0 =myStr
    //r1 =final value
    //r2 =byte counter
    //r3 =operating value
    //r5 =found end

    ldr r0,=myStr

StrCount:
    bl checkByte
    cmp r5,#1
    beq assignEOVar
    add r1, r1, r3
    add r2, r2, #4
    mov r3, #0
    b StrCount


checkByte:
    //r6 =current word
    //r7 =current character
    ldr r6, [r0,r2]

    bics r7, r6, #0xffffff00
    moveq r5,#1
    bxeq lr
    cmp r7, #0x20
    addeq r3,r3,#1
    

    bics r7, r6, #0xffff00ff
    moveq r5,#1
    bxeq lr
    cmp r7, #0x2000
    addeq r3,r3,#1


    bics r7, r6, #0xff00ffff
    moveq r5,#1
    bxeq lr
    cmp r7, #0x2000
    addeq r3,r3,#1

    bics r7, r6, #0x00ffffff
    moveq r5,#1
    bxeq lr
    cmp r7, #0x20000000
    addeq r3,r3,#1
    bx lr
    


assignEOVar:
    add r1, r1, #1 //Account for counting spaces, when word count it desired.
    bics r12, r1, #0xfffffffe
    ldreq r11, =odd
    ldrne r11, =even
    mov r10,#1
    str r10, [r11]


.section .data
//Predefined Variables Here
even: .word 0
odd: .word 0
myStr: .asciz "All your base are belong to us"
//"Hello Student"
 
.end
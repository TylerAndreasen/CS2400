/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Complete the below for Lab 8.

Q2 Write an ARM assembly program with a function fact(); upon calling, can find the factorial of a
number stored in register R1 and return the factorial in R0.

Does not comply with AAPCS for register uses.

Psuedocode:
Main
    Store desired factorial into R1.
    Store 1 in r0
    Jump to end if desired factorial is 1
    jump to factNull if desired factorial is less than 1
    Set counter register to 1
    branch to fact

fact
    Store r0 * counter in r0
    counter++
    compare counter to desired
    branch equals to stop
    branch to fact
factNull
    Set r0 to max negative
    jump to end 
stop
*/
.global _start
_start:

.text
//Instructions Here

    mov r0,#1       // Final Answer
    mov r1,#3       // Desired factorial, DO NOT MODIFY IN EXECUTION
    mov r2,#1       // Counter
    add r3,r1,#1    // Compare Value

    cmp r1,#1
    blt factNull
    beq stop
    bl fact

fact:
    cmp r2,r3
    beq stop
    mul r0,r0,r2
    add r2,r2,#1
    b fact
factNull:
    mov r0,#0xffffffff
    b stop
stop:
.end
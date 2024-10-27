/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Complete the below for Lab 8.

Q2 Write an ARM assembly program with a function fact(); upon calling, can find the factorial of a
number stored in register R1 and return the factorial in R0.

Psuedocode:
Main
Store desired factorial into R1.
store 1 in r0
Store the value in r1 into r4
Call the fact() function

fact:
    Compare the value in r4 to #1
    Branch equals to factEnd
    Branch less than to factNull
    push r4 to the stack
    sub 1 from r4
    branch to fact
factEnd:
    store r0 * r4 in r0
    return to the last called function
factNull
    store maxinum negative in r0
    branch to stop
stop:
*/

.global _start
_start:

.text
//Instructions Here

    mov r0,#1
    mov r1,#3 //Desired factorial
    mov r4,r1
    bl fact

fact:
    cmp r4,#1
    blt factNull
    beq factEnd
    push {r4}
    sub r4,r4,#1
    bl fact
factEnd:
    mul r0,r0,r4
    bx lr
factNull:
    mov r0,#0xffffffff
    b stop
stop:
.end
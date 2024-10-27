/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: Complete the below for Part 3.
*           Extend your program to add a third level of function nesting (function3) that is called by function2.
*/

.global _start
_start:

.text
//Instructions Here

mov r0,#5

main:
    bl function1
    b stop

function1:
    push {r0,lr}
    mov r0,#7
    bl function2
    pop {r0,lr}
    bx lr

function2:
    push {r0,lr}
    mov r0,#9
    bl function3
    pop {r0,lr}
    bx lr

function3:
    push {r0}
    mov r0,#11
    pop {r0}
    bx lr

stop:
.end
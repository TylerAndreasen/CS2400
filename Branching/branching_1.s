/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
*
*
*
*/

.global _start
_start:

.text

//Instructions Here


    mov r2,#3
    B one
    add r1,r2,r2
one:
    add r1,r2,#10

.end
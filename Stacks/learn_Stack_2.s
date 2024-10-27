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
• MOV R0,#1
• MOV R2,#2
• MOV R3,#10
• MOV R4,#6
• PUSH {R0-R4}
• POP {R5,R6} // R5= 1 and R6=0

.end
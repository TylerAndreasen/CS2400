/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.

Write an ARM assembly program that performs the following tasks: only 
completing the below given instructions

    Define an array of 5 integers [10, 20, 30, 40, 50] in memory.
    Load the third value (i.e., 30) from the array into the register R1 using
    pre-indexing addressing mode.
    Add 10 to the value in R1.
    Store the updated value back in the third position of the array.
 

        LDR R0, =array         
        LDR R1, [______]       
        ADD  ___________
        STR R1, [R0, ______]

*
*/

.global _start
_start:

.text
//Instructions Here

LDR R0, =array         
LDR R1, [r0, #8]       
ADD  R1, R1, #10
STR R1, [R0, #8]

	
.section .data
//Predefined Variables Here
array: .word 10, 20, 30, 40, 50

.end
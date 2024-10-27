/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.

Write an ARM assembly program that: only completing the below given 
instructions

Initializes two memory locations with the values 100 and 200.
Load the first value into the register R2 using post-indexing addressing mode.
Load the second value into the register R3 by incrementing the base address 
using post-indexing mode.
Swap the values stored in memory between the two locations.

*/

.global _start
_start:

.text
//Instructions Here

LDR R0, =value1        
LDR R2, [R0], #4
LDR R3, [R0], #-4

STR R3, [R0], #4
STR R2, [R0]  

.section .data
//Predefined Variables Here
value1: .word 100
value2: .word 200


.end
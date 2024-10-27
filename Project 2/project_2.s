/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A file to read a value from an array, increment the value by 20, and
*           return the value to the array. 
* Rubric:
Write an ARM assembly program to implement the following tasks

1- To define an array with ten elements in variable myArr. (4 points) DONE

2- Divide the array elements by 2 (4 points) DONE

3- Check if the least significant bit (LSB)of all  numbers after the division
    by 2 is 0. (4 points)

4- Store the count the numbers with LSB as 0 in a variable name check. (4 
    points)

     If all registers are zeros, the variable check should have a value of 10
     stored in it; if only three registers have LSB as 0, store 3 in the 
     variable check; for 2, store 2; if all registers have 1 in the LSB, store
     0 in the check.

Comment all the assembly language features you implemented in this program 
(4 points)

Submit the assembly file with .s extension.

*
*/

.global _start
_start:

.text
//Instructions Here

// r0 > myArr pointer, r1 > current value,  r4 > result pointer


//Step 2 - Divide each element by two, for simplicity maintain data in myArr
ldr r0, =myArr
add r3, r0, #40 //Cut off is correct for 10 elements

divideLoop:
    cmp r0, r3
    bge divideLoopEnd
    ldr r1,[r0], #4
    lsr r1, r1, #1
    str r1, [r0, #-4] // Ensure data is being placed in the same index
    b divideLoop

divideLoopEnd:

ldr r0, =myArr

checkLoop:
    cmp r0, r3
    bge checkLoopEnd
    ldr r1,[r0], #4
    bics r1, r1, #0xfffffffe // Constant clears all but the last bit
    addeq r4, r4, #1
    b checkLoop

checkLoopEnd:

ldr r5, =check
str r4, [r5]


	
.section .data
//Predefined Variables Here

// Step 1 - Uncreative Test Data
myArr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
check: .word 0


.end
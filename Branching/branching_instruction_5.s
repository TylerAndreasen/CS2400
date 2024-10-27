/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
* Tests:    a = 1, b = 1, result => 1
*           a = 1, b = 6, result => 2
*           a = 0, b = 1, result => 
*           a = 0, b = 6, result => 
* Possibility Space:
*   For the set of all values of a where a <= 0, the result = 3
*   For the set of all values of b where b >= 5, the result = 2
*   For all other values of b (b < 5), the result = 1
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
var1: .word 9

.section .bss

.text

//Instructions Here

// if (a > 0) {
//   if (b < 5) {
//     result = 1;}
//   else {
//     result = 2; }
// else {
//   result = 3; }
// }
// Using conditional Instructions.

    mov r0,#1 // a = 1;
    mov r1,#1 // b = 1;
    cmp r0,#0
    movle r2,#3 // result = 3; if a <= 0
    ble toEnd
    cmp r1,#5
    movge r2,#2 // result = 2; if a > 0 && b >= 5
    movlt r2,#1 // result = 1; if a > 0 && b < 5
toEnd:
.end
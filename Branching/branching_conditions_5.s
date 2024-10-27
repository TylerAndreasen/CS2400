/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A template ARM Assembly code file.
*
* Tests:    a = 1, b = 1, result => 1
*           a = 1, b = 6, result => 2
*           a = 0, b = 1, result => 3
*           a = 0, b = 6, result => 3
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
//Using Conditional Jumps

    mov r0,#1 // a = 1;
    mov r1,#1 // b = 1;
    cmp r0,#0
    ble aElse
    b aIf
aIf:
    cmp r1,#5
    bge bElse
    b bIf
bIf:
    mov r2,#1 // result = 1;
    b toEnd
bElse:
    mov r2,#2 // result = 2
    b toEnd
aElse:
    mov r2,#3 // result = 3;
    b toEnd

toEnd:
.end
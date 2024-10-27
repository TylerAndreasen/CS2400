/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: A pre-determined game of tic-tac-tow or row-sham-bow.
* 
* Execution: The visual output of this game is best seen if the code is
* executed in an emulator or the user can otherwise step through the code and
* can view the registers. The least significant three half bytes of Registers
* 0, 1, and 2 are used to show the play space, ie, a contigious 3x3 of
* characters if the registers are shown in hexadecimal. The first player is
* represented with an E (as an X is not available) and the second with C, all
* other characters in registers 1-4 should all be 1. Unsued spaces are 
* represented by 0s.
* 
* Gameplay: The move order of each player is predetermined, odd numbers
* represent E moves, even numbers represent C moves:
* 
*       9 | 6 | 3
*       --+---+---
*       8 | 1 | 7
*       --+---+---
*       4 | 5 | 2
*
*/

.global _start
_start:
	
.section .data

//Predefined Variables Here
pe: .word 0xE
pc: .word 0xC
spacer: .word 0x11111111
gameline: .word 0x11111000

.section .bss

//Uninitialized Variables Here
winner: .space 4

.text

//Instructions Here

//Set up game board
ldr r4,=gameline
ldr r0,[r4]
ldr r1,[r4]
ldr r2,[r4]

ldr r4,=spacer
ldr r3,[r4]
//Game board done

//Load player symbols
ldr r4,=pe
ldr r5,[r4]
ldr r4,=pc
ldr r6,[r4]

//Move 1: E, Center
mov r8,r5
lsl r8,r8,#4
add r1,r8

//Move 2: C, Bottom Right
mov r8,r6
add r2,r8

//Move 3: E, Top Right
mov r8,r5
add r0,r8

//Move 4: C, Bottom Left
mov r8,r6
lsl r8,r8,#8
add r2,r8

//Move 5: E, Bottom Center
mov r8,r5
lsl r8,r8,#4
add r2,r8

//Move 6: C, Top Center
mov r8,r6
lsl r8,r8,#4
add r0,r8

//Move 7: E, Center Right
mov r8,r5
add r1,r8

//Move 8: C, Center Left
mov r8,r6
lsl r8,r8,#8
add r1,r8

//Move 9: E, Top Left
mov r8,r5
lsl r8,r8,#8
add r0,r8



/*Test: Place E's in a top right to bottom left diagonal

//Top right
mov r8,r5
add r0,r8

//Center
lsl r8,r8,#4
add r1,r8

//Bottom left
lsl r8,r8,#4
add r2,r8
*/

.end
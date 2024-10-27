/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: The six desired functions for Lab 5.
* 
*/

.global _start
_start:

   MOV R1, #5
   MOV R2, #5
   CMP R1, R2
   beq equal_label_1
   B stop     //End the program here if it is not equal
equal_label_1:
   MOV R3,#1


_startSecond:

	MOV R1, #5
	MOV R2, #5
	CMP R1, R2
	bne equal_label_2
	B stop     //End the program here if it is not equal
equal_label_2:
	MOV R3,#1

_startThird:

   MOV R1, #5
   MOV R2, #5
   CMP R1, R2
   blt equal_label_3
   B stop     //End the program here if it is not equal
equal_label_3:
   MOV R3,#1


_startFourth:

	MOV R1, #5
	MOV R2, #5
	CMP R1, R2
	ble equal_label_4
	B stop     //End the program here if it is not equal
equal_label_4:
	MOV R3,#1

_startFifth:

   MOV R1, #5
   MOV R2, #5
   CMP R1, R2
   bgt equal_label_5
   B stop     //End the program here if it is not equal
equal_label_5:
   MOV R3,#1


_startSixth:

	MOV R1, #5
	MOV R2, #5
	CMP R1, R2
	bge equal_label_6
	B stop     //End the program here if it is not equal
equal_label_6:
	MOV R3,#1

stop:
/*
-------------------------------------------------------
fx program
-------------------------------------------------------
Author: Asta walor-Scott
900#: 901066812	
Email:lwalorsc@msudenver.edu
Date:9/23/24
-------------------------------------------------------
solves //5g*2 - 6g+8
-------------------------------------------------------
*/
.global _start
_start:
	
	.data 
	x: .word 20 //g is saved for G(x) for me sorry
	.bss
	y: .word
	
.text

ldr r0,=x
ldr r1,[r0]
ldr r0,=y


 //5g*2
mov r3,#4 
mov r5,r1
mov r6,r1
back:
cmp r4,r3
blt mult

mov r3,#1
mov r4,#0
cmp r4,r3
blt multb

backb:
mov r3,#5
mov r4,#0
backc:
cmp r4,r3
blt multc
add r6,r6,#8
sub r8, r5,r6
str r8,[r0]
b end

mult:
add r5,r5,r1
add r4,r4,#1
b back
multb:
add r5,r5,r5
add r4,r4,#1
b backb
multc:
add r6,r6,r1
add r4,r4,#1
b backc


end:
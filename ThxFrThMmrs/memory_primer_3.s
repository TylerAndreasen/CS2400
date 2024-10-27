.global _start
_start:
	
.section .data

var1: .word 0x2,0x5,0x5

.section .bss
var2: .space 4

.text

ldr r0,=var1
ldr r1,=var2
ldr r2,[r0,#4]
add r2,r2,#3
str r2,[r1]

.end
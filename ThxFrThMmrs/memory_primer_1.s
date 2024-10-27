.global _start
_start:
	
.section .data

arr1: .word 5,10,15

.text

ldr r0,=arr1
ldr r1,[r0]
ldr r2,[r0,#4]
ldr r3,[r0,#8]


.end
.global _start
_start:
	
.section .data

arr: .word 10,20,30

.section .bss
sum: .space 4

.text

ldr r0,=arr
ldr r2,[r0]
ldr r1,[r0,#4]
add r2,r2,r1
ldr r1,[r0,#8]
add r2,r2,r1
ldr r0,=sum
str r2,[r0]

.end
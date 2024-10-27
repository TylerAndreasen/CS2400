.global _start
_start:
	
.section .data

//Predefined Variables Here
a: .word 0x7fffffff
b: .word 0xbfffffff

.text

ldr r0,=a
ldr r1,[r0]
ldr r0,=b
ldr r2,[r0]

adds r3,r1,r2
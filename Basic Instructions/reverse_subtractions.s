.global _start
_start:
	
MOV r1, #5
MOV r2, #20
RSB r3, r2, r1    
RSB r5, r1, #10 // This ouputs 0xffff fff1

rsc r6, r2, r1
rsc r7, r1,#10 // This outputs 0xffff fff0

.end
/* I am unsure why exactly there is a discrepency in the output of the above
 * commented instructions, but I know there is supposed to be:
 * 
 * https://stackoverflow.com/questions/27327778/wrong-usage-of-carry-flag-in-arm-subtract-instructions
 * 
 * The above seems to explain it, but I am yet to read it in-depth enough to 
 * really grock the differences.
 */ 
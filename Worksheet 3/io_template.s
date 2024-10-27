/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: An example of how to read and write characters to the JTAG UART
*           Terminal. I am rather annoyed that I had to seek out this 
*           information myself, as this should have been explained in the
*           slides that are not available from the
*
*/

.global _start
_start:

.text
//Instructions Here

loop:
    ldr r1, =0xff201000 // Location of the IO buffer for the JTAG UART
    ldr r0,[r1]         // Standard load and store instructions can be used
    str r0,[r1]         // The video I found included a 'b' after each, but these seem unnecessary
    cmp r0,#0
    bne loop

.end
/*
* Author: Tyler Andreasen
* Email: tandreas@msudenver.edu
* Purpose: ARM implementation of the following HLL Code
*
*    if (weight > criticalValue)
*    {
*        cost = weight * 2 + surcharge;
*    } else
*    {
*        cost = weight * 2;
*    }
*
*/

.global _start
_start:

.text
//Instructions Here

// r0 - weight
// r1 - criticalValue
// r2 - surcharge
// r3 - cost
// r5 - temp

    ldr r5,=weight
    ldr r0,[r5]
    ldr r5,=criticalValue
    ldr r1,[r5]
    cmp r0,r1
    lsl r3, r0, #1
    ble pushCost
applySurcharge: // Does not branch here
    ldr r5,=surcharge
    ldr r2,[r5]
    add r3, r3, r2
pushCost:
    ldr r5,=cost
    str r3,[r5]

	
.section .data
//Predefined Variables Here
    weight: .word 10
    criticalValue: .word 12
    surcharge: .word 3
    cost: .word 0


.end
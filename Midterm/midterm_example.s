.text
    LDR R4, =weight
    LDR R5, [R4] @ weight in R5
    LDR R4, =criticalValue
    LDR R1, [R4] @criticalValue in R1
    LDR R4, =surcharge
    LDR R2, [R4] @surcharge in R2
    LDR R4, =cost
    LDR R3, [R4] @ cost in R3
    CMP R5, R1
    MOV R3, R5, LSL #1
    BLE else1
    B stop
else1:
    ADD R3, R3, R2
stop:
    STR R3, [R4]
.data
    weight: .word 10
    criticalValue: .word 12
    surcharge: .word 3
    cost: .space 4
.end
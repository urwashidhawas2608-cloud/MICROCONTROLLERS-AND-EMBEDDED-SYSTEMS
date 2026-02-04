
ORG 0000H

MOV 50H, #07H   ; A = 7
MOV 51H, #03H   ; B = 3

MOV R0, 50H
MOV R1, 51H

LOOP1:
MOV A, R1
JZ A_GREATER     ; if B = 0 ? A > B

DEC R0
DEC R1
SJMP LOOP1

A_GREATER:
MOV 52H, #01H    ; Store A > B
END

//A=B

ORG 0000H

MOV 50H, #05H   ; A = 5
MOV 51H, #05H   ; B = 5

MOV R0, 50H
MOV R1, 51H

LOOP2:
MOV A, R0
JZ CHECK_EQUAL

DEC R0
DEC R1
SJMP LOOP2

CHECK_EQUAL:
MOV A, R1
JZ EQUAL

EQUAL:
MOV 52H, #00H    ; Store A = B
END


//A<B

ORG 0000H

MOV 50H, #02H   ; A = 2
MOV 51H, #06H   ; B = 6

MOV R0, 50H
MOV R1, 51H

LOOP3:
MOV A, R0
JZ A_LESS        ; if A = 0 ? A < B

DEC R0
DEC R1
SJMP LOOP3

A_LESS:
MOV 52H, #0FFH   ; Store A < B
END
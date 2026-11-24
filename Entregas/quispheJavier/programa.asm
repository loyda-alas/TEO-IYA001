
; Programa: suma de dos numeros

MOV A, 3
MOV B, 5

bucle:
    INC A
    DEC B
    CMP B, 0
    JNZ bucle

MOV D, 232
MOV [D], 51
INC D
MOV [D], 43
INC D
MOV [D], 53
INC D
MOV [D], 61
INC D

ADD A, 48
MOV [D], A

HLT

; Nombre: Asier
; Programa que calcula (35-12)+(6*2) y si es mayor o menor que 30

MOV A,35
MOV B,12

SUB A, B

MOV C, 6

ADD A, C

ADD A, C

CMP A, 30
JB menor

JMP mayor

menor:
    CALL print
    JMP fin

mayor:
    CALL print
    JMP fin

fin:

HLT

print:
    MOV D, 232
    MOV C, 0

decenas:
    CMP A, 10
    JB unidades
    SUB A, 10
    INC C
    JMP decenas

unidades:
    ADD C, '0'
    MOV [D], C
    INC D

    ADD A, '0'
    MOV [D], A

    RET
; José Luis Arias
; Programa para elevar un número al cuadrado mediante sumas

MOV B, 15
MOV A, 0
MOV C, B
MOV D, 0

CMP B, 15
JA error

CMP C, 0
JZ fin

sumar: 
    ADD A, B
    DEC C
    JNZ sumar

separar:
    MOV C, 0

centenas: 
    CMP A, 100
    JB separar_decenas
    
    SUB A, 100
    INC C
    JMP centenas

separar_decenas:
    MOV B, 0

decenas:
    CMP A, 10
    JB mostrar
    SUB A, 10
    INC B 
    JMP decenas
    

mostrar:
    MOV [232], 'R'
    MOV [233], '='
    ADD C, '0'
    MOV [234], C
    ADD B, '0'
    MOV [235], B
    ADD A, '0'
    MOV [236], A
    HLT


fin:
    HLT

error: 
    MOV D, 1
    HLT

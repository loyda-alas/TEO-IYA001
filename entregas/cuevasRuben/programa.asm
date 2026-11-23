; Nombre: Ruben Cuevas
; Programa: cuenta del 1 al 5 y muestra cada numero en la consola.

MOV A, 1

BUCLE:
    MOV B, A
    ADD B, 48
    MOV [0xE8], B

    MOV B, 1
    ADD A, B
    CMP A, 6
    JNZ BUCLE

HLT

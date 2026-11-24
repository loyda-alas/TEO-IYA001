; Nombre: Daniel Ortez
; Descripcion: Suma los numeros del 1 al 3 y muestra su caracter ASCII en la salida.

    MOV A, 0        ; Acumulador de la suma
    MOV B, 1        ; Contador inicial (1)
    MOV C, 3        ; Limite superior (3)

bucle:
    ADD A, B        ; A = A + B
    CMP B, C        ; Compara contador con el limite
    JE fin          ; Si B == C, sale del bucle
    INC B           ; B = B + 1
    JMP bucle       ; Repite el bucle

fin:
    ADD A, 48       ; Convierte la suma (6) al codigo ASCII del caracter '6'
    MOV [232], A    ; Escribe el resultado en la salida del simulador
    HLT             ; Detiene el programa

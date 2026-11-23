; Nombre: Gabriela Florián
; Descripcion: Suma los numeros del 1 al 5 y guarda el resultado final (15) en el registro A.

    MOV A, 0        ; Inicializa el acumulador A en 0 (resultado)
    MOV B, 5        ; Inicializa el contador B en 5

bucle:
    ADD A, B        ; Suma el valor de B a A
    DEC B           ; Resta 1 al contador B
    JNZ bucle       ; Si B no es cero, repite el bucle

    HLT             ; Detiene la ejecucion del programa

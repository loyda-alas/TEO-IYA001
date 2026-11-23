;Maldonado Angel
;Descripción: Generar la serie de Fibonacci en memoria RAM hasta el límite de 8 bits (233).

JMP inicio

; --- SECCIÓN DE DATOS ---
serie: DB 0                 ; Dirección inicial donde se guardará la serie en RAM

inicio:
    MOV A, 0                ; Primer término de Fibonacci (F0 = 0)
    MOV B, 1                ; Segundo término de Fibonacci (F1 = 1)
    MOV C, serie            ; Puntero de memoria RAM

    MOV [C], A              ; Guardar 0 en RAM
    INC C                   ; Avanzar puntero 
    MOV [C], B              ; Guardar 1 en RAM
    INC C                   ; Avanzar puntero

bucle:
    MOV D, A                ; Copiar término anterior en D
    ADD D, B                ; D = A + B
     JC fin                 ; Si supera 255 (Carry Flag =1), terminar

    MOV [C], D              ; Guardar nuevo término en RAM
    INC C                   ; Avanzar puntero

    MOV A, B                ; Desplazar valores: A = B
    MOV B, D                ; B = nuevo resultado
    JMP bucle               ; Repetir

fin:
    HLT                     ; Detener ejecución

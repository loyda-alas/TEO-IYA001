; Pablo Nieto
; Suma cuatro numeros y calcula su media.
; Al terminar, D contiene la suma y A contiene la media entera.

MOV A, 0         ; Total inicial
MOV B, numeros   ; Primer numero de la lista
MOV C, 4         ; Cantidad de numeros

bucle:
    ADD A, [B]   ; Anade el numero al total
    INC B        ; Pasa al siguiente numero
    DEC C        ; Queda uno menos
    JNZ bucle    ; Repite mientras falten numeros

MOV D, A        ; Guarda la suma en D
DIV 4           ; Divide la suma entre cuatro
HLT             ; Termina el programa

numeros: DB 2
         DB 4
         DB 6
         DB 8

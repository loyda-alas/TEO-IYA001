; Nombre: Daniel Celis
; Descripción: Realiza una cuenta atrás del 9 al 0 y la muestra por pantalla en el simulador.

JMP inicio

inicio:
    MOV A, 9          ; Contador inicial en 9
    MOV C, 32         ; Código ASCII del espacio (' ')
    MOV D, 232        ; Dirección inicial de la memoria de pantalla del simulador

bucle:
    MOV B, A          ; Copiamos el número actual en B para no alterar el contador A
    ADD B, 48         ; Convertimos el dígito (0-9) a su carácter ASCII ('0'-'9')
    MOV [D], B        ; Escribimos el carácter en la pantalla
    INC D             ; Avanzamos a la siguiente celda de memoria de pantalla

    MOV [D], C        ; Escribimos un espacio separador
    INC D             ; Avanzamos a la siguiente celda

    CMP A, 0          ; Comprobamos si el contador ha llegado a 0
    JZ fin            ; Si es 0, saltamos a la etiqueta 'fin'

    DEC A             ; Decrementamos el contador (A = A - 1)
    JMP bucle         ; Volvemos al inicio del bucle

fin:
    HLT               ; Detenemos la ejecución del programa
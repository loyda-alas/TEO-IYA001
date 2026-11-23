; Nombre: William Guardado
; Muestra en pantalla el numero 73 en binario (1001001)

        MOV C, 64       ; C es la "mascara": empieza en el bit de valor 64, el más alto que tiene 73
        MOV D, 232      ; D apunta a la primera casilla de la pantalla

siguiente:
        MOV A, 73       ; cargamos el numero 73
        AND A, C        ; nos quedamos solo con el bit que marca la mascara
        JZ cero         ; si ese bit vale 0 se escribe "0"
        MOV B, '1'      ; si no el bit vale 1
        JMP escribe

cero:
        MOV B, '0'

escribe:
        MOV [D], B      ; se escribe el '0' o el '1' en la pantalla
        INC D           ; pasamos a la siguiente casilla
        SHR C, 1        ; movemos la máscara al bit siguiente (64, 32, 16, 8, 4, 2, 1)
        JNZ siguiente   ; si la mascara aun no es 0, quedan bits por mirar

        HLT             ; fin del programa
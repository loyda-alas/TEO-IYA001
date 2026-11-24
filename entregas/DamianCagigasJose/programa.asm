; Jose Damian Cagigas
; Suma los numeros del 1 al 10 y escribe en la consola "Suma 1-10 = 55".

    JMP inicio

texto:
    DB "Suma 1-10 = "
    DB 0

inicio:
    MOV C, texto        ; C apunta al primer caracter del texto
    MOV D, 0xE8         ; D apunta al inicio de la consola

.imprime:
    MOV A, [C]          ; leer un caracter
    CMP A, 0            ; fin del texto?
    JE .suma
    MOV [D], A          ; escribirlo en la consola
    INC C
    INC D
    JMP .imprime

.suma:
    MOV A, 0            ; A = acumulador
    MOV B, 10           ; B = contador (de 10 a 1)

.bucle:
    ADD A, B
    DEC B
    JNZ .bucle          ; repetir hasta que B llegue a 0

    ; A = 55: separar decenas y unidades
    MOV B, A            ; guardar 55 en B
    DIV 10              ; A = 5 (decenas)
    MOV C, A
    MUL 10              ; A = 50
    SUB B, A            ; B = 5 (unidades)

    ADD C, 48           ; convertir a caracter ASCII ('0' = 48)
    MOV [D], C
    INC D
    ADD B, 48
    MOV [D], B

    HLT

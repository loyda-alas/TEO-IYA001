; Alejandro Pelayo Tagle
; Programa: Suma los numeros del 1 al 5
; Resultado: Suma 1-5 = 15

    JMP inicio          ; Salta al inicio del programa

texto:
    DB "Suma 1-5 = "    ; Guarda el texto que mostraremos
    DB 0                ; Marca el final del texto

inicio:
    MOV C, texto        ; Guarda en C la direccion del texto
    MOV D, 0xE8         ; Guarda en D la direccion de la consola

.imprime:
    MOV A, [C]          ; Lee un caracter de la memoria
    CMP A, 0            ; Comprueba si hemos llegado al final
    JE .suma            ; Si es el final, salta a la suma
    MOV [D], A          ; Escribe el caracter en la consola
    INC C               ; Avanza al siguiente caracter del texto
    INC D               ; Avanza a la siguiente posicion de consola
    JMP .imprime        ; Repite el proceso

.suma:
    MOV A, 0            ; Inicializa el acumulador a cero
    MOV B, 5            ; Inicializa el contador en cinco

.bucle:
    ADD A, B            ; Suma el contador al acumulador
    DEC B               ; Resta uno al contador
    JNZ .bucle          ; Repite mientras B no sea cero

    ; Al terminar, A contiene 15

    MOV B, A            ; Copia el resultado a B
    DIV 10              ; Divide entre diez (obtiene las decenas)
    MOV C, A            ; Guarda las decenas en C
    MUL 10              ; Multiplica las decenas por diez
    SUB B, A            ; Obtiene las unidades restando a B

    ADD C, 48           ; Convierte las decenas a codigo ASCII
    MOV [D], C          ; Escribe las decenas en la consola
    INC D               ; Avanza a la siguiente posicion

    ADD B, 48           ; Convierte las unidades a codigo ASCII
    MOV [D], B          ; Escribe las unidades en la consola

    HLT                 ; Detiene la ejecucion del programa

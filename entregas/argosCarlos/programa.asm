; Carlos Argos
; Programa que suma dos numeros y muestra el resultado.

MOV A, 7       ; Guarda el numero 7 en A
MOV B, 2       ; Guarda el numero 2 en B
ADD A, B       ; Suma A y B, resultado 9
ADD A, 48      ; Convierte el 9 a codigo ASCII
MOV [0xE8], A  ; Muestra el resultado en pantalla
HLT            ; Finaliza el programa

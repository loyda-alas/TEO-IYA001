; Mariano Filiaggi
; Contador del 1 al 10 que muestra los numeros en la salida del simulador

	MOV C, 1          ; C es el contador, empieza en 1
	MOV D, 232        ; 232 es donde empieza la pantalla de salida

bucle:
	CMP C, 10         ; llegamos al 10?
	JE diez           ; si es igual, saltamos a escribir el 10

	MOV A, C
	ADD A, 48         ; convierte el numero en caracter (1 -> '1')
	MOV [D], A        ; lo escribe en la pantalla
	INC D             ; avanza una posicion en la pantalla

	MOV B, 32         ; 32 = espacio
	MOV [D], B        ; escribe un espacio entre numeros
	INC D

	INC C             ; contador + 1
	JMP bucle         ; vuelve al inicio

diez:
	MOV A, 49         ; '1'
	MOV [D], A
	INC D
	MOV A, 48         ; '0'
	MOV [D], A
	HLT               ; fin del programa
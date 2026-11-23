; Autor: César Gómez Pereda
; Calcula el factorial de 5 con un bucle y muestra el resultado en pantalla: "5! = 120".

	JMP start		; saltamos por encima de los datos

msg:	DB "5! = "		; texto que se escribe antes del resultado
	DB 0			; fin del texto (0)

start:
	MOV C, msg		; C apunta al texto
	MOV D, 232		; D apunta a la pantalla (empieza en 232)
	CALL print		; escribe "5! = "

	MOV A, 1		; A = resultado (empieza en 1)
	MOV B, 5		; B = contador (de 5 hacia 1)
bucle:
	MUL B			; A = A * B
	DEC B			; B = B - 1
	JNZ bucle		; si B no es 0, repetimos

	CALL decimal		; escribe A (120) en decimal
	HLT			; fin del programa

; print: copia el texto de [C] a la pantalla [D] hasta encontrar un 0
print:
	PUSH A
	PUSH B
	MOV B, 0
print_bucle:
	MOV A, [C]		; lee un carácter
	MOV [D], A		; lo escribe en la pantalla
	INC C
	INC D
	CMP B, [C]		; ¿el siguiente es el 0 final?
	JNZ print_bucle
	POP B
	POP A
	RET

; decimal: escribe A (0-255) en la pantalla como 3 cifras: centenas, decenas, unidades
decimal:
	PUSH B
	MOV B, A		; B = número original
	DIV 100			; A = centenas
	CALL digito
	MUL 100			; A = centenas * 100
	SUB B, A		; B = lo que queda (0-99)
	MOV A, B
	DIV 10			; A = decenas
	CALL digito
	MUL 10			; A = decenas * 10
	SUB B, A		; B = unidades
	MOV A, B
	CALL digito
	POP B
	RET

; digito: escribe la cifra de A (0-9) como carácter ASCII en [D]
digito:
	PUSH A
	ADD A, 48		; 0 -> '0' (48 en ASCII)
	MOV [D], A
	INC D
	POP A
	RET

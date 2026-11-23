; Nombre: Abraham Gonzalez
; Programa: muestra en la pantalla los terminos de Fibonacci menores que 50 (0 1 1 2 3 5 8 13 21 34)
	JMP start

start:
	MOV D, 232		; D apunta al inicio de la pantalla (232-255)
	MOV A, 0		; A = F(n)
	MOV B, 1		; B = F(n+1)

bucle:
	CMP A, 50		; si A >= 50, terminamos
	JAE fin
	CALL imprimir	; escribe el numero de A en la pantalla
	MOV [D], 32		; espacio separador (ASCII 32)
	INC D
	MOV C, A		; C = F(n) + F(n+1)
	ADD C, B
	MOV A, B		; avanzamos: A = F(n+1)
	MOV B, C		;            B = F(n+2)
	JMP bucle

fin:
	HLT

; imprimir: escribe en [D] el numero de A (0-99) en decimal
; y deja D apuntando a la siguiente posicion libre.
; Conserva A y B; usa C como auxiliar.
imprimir:
	PUSH A
	PUSH B
	MOV B, A		; B = numero
	CMP A, 10		; si tiene una sola cifra, solo unidades
	JB unidades
	DIV 10			; A = decenas
	MOV C, A
	ADD C, 48		; cifra -> caracter ASCII ('0' = 48)
	MOV [D], C
	INC D
	MUL 10			; A = decenas * 10
	SUB B, A		; B = unidades
unidades:
	ADD B, 48
	MOV [D], B
	INC D
	POP B
	POP A
	RET

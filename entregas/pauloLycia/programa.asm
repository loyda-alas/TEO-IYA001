; Autora: Lycia Paulo
; Descripcion: calcula el factorial de 5 con un bucle y muestra "5!=120" en la pantalla del simulador.

	JMP start
texto:	DB "5!="
	DB 0

start:
	MOV C, texto
	MOV D, 232
escribir:
	MOV A, [C]
	CMP A, 0
	JZ calcular
	MOV [D], A
	INC C
	INC D
	JMP escribir

calcular:
	MOV A, 1
	MOV B, 5
bucle:
	MUL B
	DEC B
	JNZ bucle
	CALL mostrar
	HLT

mostrar:
	MOV B, A
	DIV 100
	ADD A, 48
	MOV [D], A
	INC D
	SUB A, 48
	MUL 100
	SUB B, A
	MOV A, B
	DIV 10
	ADD A, 48
	MOV [D], A
	INC D
	SUB A, 48
	MUL 10
	SUB B, A
	ADD B, 48
	MOV [D], B
	RET

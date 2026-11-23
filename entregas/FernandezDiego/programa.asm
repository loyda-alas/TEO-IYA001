; Diego Fernández
; Calculadora de dos números
; A = primer número, B = segundo número, C = operación
; 1 = sumar, 2 = restar, 3 = multiplicar, 4 = dividir

	MOV A, 2       ; primer número
	MOV B, 20        ; segundo número
	MOV C, 3        ; operación (1, 2, 3 o 4)

	CMP C, 1
	JE suma
	CMP C, 2
	JE resta
	CMP C, 3
	JE multiplica
	CMP C, 4
	JE divide
	JMP fin         ; si no es 1-4, no hace nada

suma:
	ADD A, B
	JMP fin

resta:
	SUB A, B
	JMP fin

multiplica:
	MUL B           ; A = A * B
	JMP fin

divide:
	DIV B           ; A = A / B
	JMP fin

fin:
	HLT
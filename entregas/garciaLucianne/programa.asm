; Lucianne Garcia Fernandez
; Programa de contador descendente del 9 al 1 en pantalla
JMP start
start:
	MOV B, 9
	MOV D, 232

bucle:
	MOV A,B
	ADD A, '0'
	MOV [D], A

	INC D
	DEC B 
	JNZ bucle

	HLT

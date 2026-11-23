; Arenas Victor
; Invierte el texto indicado.

	JMP start
texto: DB "Soy Victor Arenas"	; Texto original
	DB 0			

start:
	MOV C, texto		
	MOV D, 232		
	CALL invertir
	HLT			

invertir:			
	MOV B, 0		
.apilar:
	MOV A, [C]		
	CMP A, 0		
	JZ .desapilar		
	PUSH A			
	INC C			
	INC B			
	JMP .apilar
.desapilar:
	CMP B, 0		
	JZ .fin			
	POP A			
	MOV [D], A		
	INC D			
	DEC B			
	JMP .desapilar
.fin:
	RET

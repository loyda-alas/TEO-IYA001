; Ejemplo: escribe una frase en la salida
; Simulador ensamblador de 8 bits (salida en 232-255)

	JMP start
frase:	DB "Hola desde Santander!"	
	DB 0				

start:
	MOV C, frase	
	MOV D, 232	
	CALL print
	HLT		

print:			
	PUSH A
	PUSH B
	MOV B, 0	
.loop:
	MOV A, [C]	
	CMP A, B	
	JZ .fin		
	MOV [D], A	
	INC C		
	INC D
	JMP .loop

.fin:
	POP B
	POP A
	RET
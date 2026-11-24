; Nombre: Felix Manrique
; Descripcion: Programa en ensamblador que imprime un saludo por pantalla.

	JMP start
mensaje: DB "Hola, mi nombre es Felix" 
         DB 0                          

start:
	MOV C, mensaje  
	MOV D, 232      
	CALL print
	HLT             

print:                  
	PUSH A
	PUSH B
	MOV B, 0
.loop:
	MOV A, [C]      
	MOV [D], A      
	INC C
	INC D
	CMP B, [C]      
	JNZ .loop       

	POP B
	POP A
	RET
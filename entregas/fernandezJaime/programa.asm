; Jaime Fernández
; Programa que saca por pantalla los números de Fibonacci (1 1 2 3 5 8...)

	JMP start       ; salto al principio del programa

start:
	MOV D, 232      ; posicion del display
	MOV B, 0        ; numero anterior
	MOV C, 1        ; numero actual

bucle:
	MOV A, C        ; paso el numero actual a A para imprimirlo
	CALL imprimir   ; lo pinto en pantalla
	MOV A, C
	ADD A, B        ; sumo los dos ultimos para sacar el siguiente
	MOV B, C        ; el actual pasa a ser el anterior
	MOV C, A        ; y el nuevo pasa a ser el actual
	CMP C, 60       ; el siguiente es 89 y ya no cabe, asi que paro aqui
	JB bucle        ; si todavia cabe vuelvo al bucle
	HLT             ; fin

; imprime el numero que hay en A y deja un espacio detras
imprimir:
	PUSH B          ; guardo B porque lo voy a usar aqui dentro
	PUSH A          ; me guardo el numero para luego
	CMP A, 10
	JB unidades     ; si tiene una cifra me salto lo de las decenas
	DIV 10          ; saco las decenas
	MOV B, A        ; las guardo en B
	ADD A, 48       ; +48 para que salga como caracter
	MOV [D], A      ; escribo las decenas
	INC D           ; siguiente casilla
	MOV A, B
	MUL 10          ; decenas * 10
	MOV B, A
	POP A           ; recupero el numero original
	SUB A, B        ; numero - decenas*10 = unidades
	JMP escribir
unidades:
	POP A           ; si solo tiene una cifra el numero ya son las unidades
escribir:
	ADD A, 48       ; lo paso a caracter
	MOV [D], A      ; escribo las unidades
	INC D
	MOV A, 32       ; espacio
	MOV [D], A
	INC D
	POP B           ; dejo B como estaba
	RET             ; vuelvo al bucle

; Arenas Victor
; Invierte el texto indicado.

	JMP start
texto: DB "Soy Victor Arenas"	; Texto original
	DB 0			; Fin del texto

start:
	MOV C, texto		; C apunta al texto
	MOV D, 232		; D apunta a la salida
	CALL invertir
	HLT			; Fin del programa

invertir:			; invertir(C, D)
	MOV B, 0		; B cuenta los caracteres guardados
.apilar:
	MOV A, [C]		; Lee un caracter del texto
	CMP A, 0		; Hemos llegado al 0 del final?
	JZ .desapilar		; Si: empezamos a sacar de la pila
	PUSH A			; Guarda el caracter en la pila
	INC C			; Siguiente caracter
	INC B			; Uno mas en la pila
	JMP .apilar
.desapilar:
	CMP B, 0		; Quedan caracteres en la pila?
	JZ .fin			; No: hemos terminado
	POP A			; Saca el ultimo que entro
	MOV [D], A		; Lo escribe en la salida
	INC D			; Siguiente casilla de la salida
	DEC B			; Uno menos en la pila
	JMP .desapilar
.fin:
	RET

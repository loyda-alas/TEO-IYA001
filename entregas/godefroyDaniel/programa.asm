; Autor: Daniel Godefroy
; Que hace: convierte a mayusculas un texto escrito en minusculas
; y lo muestra en la pantalla del simulador (direcciones 232 a 255).

	JMP start		; Saltamos los datos

texto:	DB "hola, soy daniel"	; Texto de entrada (maximo 24 caracteres)
	DB 0			; 0 = fin del texto

start:
	MOV C, texto		; C apunta al primer caracter del texto
	MOV D, 232		; D apunta a la primera casilla de la pantalla
	CALL mayus		; Copiamos el texto en mayusculas
	HLT			; Fin del programa

; Subrutina mayus: copia el texto de [C] a [D] pasando a mayusculas
; las letras de la 'a' a la 'z'. Termina al encontrar un 0.
mayus:
	PUSH A			; Guardamos A y B para no perder sus valores
	PUSH B
	MOV B, 0		; B = 0, el marcador de fin
.bucle:
	MOV A, [C]		; A = caracter actual
	CMP A, B		; Es el 0 del final?
	JZ .fin
	CMP A, 'a'		; Menor que 'a'? No es minuscula, se copia igual
	JB .copiar
	CMP A, 'z'		; Mayor que 'z'? Tampoco es minuscula
	JA .copiar
	SUB A, 32		; Minuscula -> mayuscula (en ASCII, 'a' - 'A' = 32)
.copiar:
	MOV [D], A		; Escribimos el caracter en la pantalla
	INC C			; Siguiente caracter del texto
	INC D			; Siguiente casilla de la pantalla
	JMP .bucle
.fin:
	POP B			; Recuperamos B y A en orden inverso
	POP A
	RET

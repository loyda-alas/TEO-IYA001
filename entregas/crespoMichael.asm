; Michael Crespo
; Mostrar los numeros del 0 al 9 en la pantalla
; --- Preparar los valores iniciales ---
inicio:
	MOV A, 48		; A guarda el codigo del caracter '0' (el 48 es el '0')
	MOV B, 10		; B sera el contador: queremos escribir 10 caracteres
	MOV C, 232		; C guarda la posicion de la pantalla donde escribir (la 232 es la primera)

; --- Escribir los caracteres uno a uno ---
escribir:
	CMP B, 0		; Comprobamos si ya no quedan caracteres por escribir
	JZ fin			; Si no quedan, terminamos
	MOV [C], A		; Escribimos el caracter en la pantalla, en la posicion que guarda C
	INC A			; Pasamos al siguiente caracter (de '0' a '1', de '1' a '2'...)
	INC C			; Avanzamos C a la siguiente casilla de la pantalla
	DEC B			; Restamos 1 al contador de caracteres que faltan
	JMP escribir		; Volvemos arriba para escribir el siguiente caracter
    
; ----- Cerrar el programa -----
fin:
	HLT
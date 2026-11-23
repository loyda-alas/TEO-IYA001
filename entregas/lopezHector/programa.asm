; Hector Lopez
; Cuenta atrás del 9 al 0, el primer bloque establece el numero 9 en ASCII despues en el .loop la primera linea escribe la cifra despues se salta a la siguiente posicion 
;una vez saltamos se mira la cifra anterior y despues comprobamos si ha pasado de la poscion 0 y volvemos a repetir el proceso hasta 0

	MOV A, 57	; A = '9' en ASCII
	MOV D, 232	; Salida
.loop:
	MOV [D], A	; Escribe la cifra
	INC D		; Siguiente posición
	DEC A		; Cifra anterior
	CMP A, 47	; ¿Ha pasado del '0'? (47 = carácter anterior a '0')
	JNZ .loop
	HLT

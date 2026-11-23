; Nombre: Sergio del Rio Pardo
; Semaforo: segun el numero de "color" (1, 2 o 3) escribe R (rojo), A (ambar) o V (verde) en la pantalla.

	MOV A, [color]	; A es el numero del color
	CMP A, 1	; ¿es un 1?
	JZ rojo		; si lo es, salta a rojo
	CMP A, 2	; ¿es un 2?
	JZ ambar	; si lo es, salta a ambar
	MOV [232], 'V'	; si no, es verde: escribe V
	HLT

rojo:
	MOV [232], 'R'	; escribe R
	HLT

ambar:
	MOV [232], 'A'	; escribe A
	HLT

color: DB 1		; Para pruebas cambia este numero (1, 2 o 3, si pones otro número que no sean esos saldrá el verde por defecto)

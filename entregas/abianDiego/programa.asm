; Autor: Diego Abián González
; Mayor y menor: compara dos números del 0 al 9 y muestra en la pantalla del simulador cuál es el mayor y cuál el menor.

	MOV A, '3'
	MOV B, '8'

	MOV [232], A		; inicio de la pantalla
	MOV [233], ','
	MOV [234], B

	CMP A, B
	JNC mostrar		; si A >= B, ya están en orden
	MOV C, A		; si no, intercambiamos A y B
	MOV A, B
	MOV B, C

mostrar:
	MOV [236], 'M'
	MOV [237], 'A'
	MOV [238], 'X'
	MOV [239], ':'
	MOV [240], A

	MOV [242], 'M'
	MOV [243], 'I'
	MOV [244], 'N'
	MOV [245], ':'
	MOV [246], B
	HLT

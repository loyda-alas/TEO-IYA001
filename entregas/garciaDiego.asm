; Diego Garcia
; Darle la vuelta a un texto y mostrar el resultado

JMP inicio		; Saltamos los datos para que no se ejecuten como si fueran instrucciones

; --- DATOS ---
texto:	DB "Hola mundo"		; El texto que queremos invertir (máximo 24 letras)
	DB 0			; Un 0 al final que marca dónde termina el texto

; --- Meter las letras en la pila ---
inicio:
	MOV C, texto		; C guarda la posición de la primera letra del texto
	MOV B, 0		; B será el contador de letras; empieza en 0

apilar:
	MOV A, [C]		; Se lee la letra que está en la posición que guarda C
	CMP A, 0		; Comprobamos si hemos llegado al 0 del final
	JZ mostrar		; Si es el final, pasamos al siguiente apartado del programa
	PUSH A			; Si no, guardamos la letra en la pila
	INC C			; Avanzamos C a la siguiente letra
	INC B			; Sumamos 1 al contador de letras
	JMP apilar		; Volvemos arriba para leer la siguiente letra
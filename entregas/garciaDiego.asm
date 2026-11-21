; Diego Garcia
; Darle la vuelta a un texto y mostrar el resultado

JMP inicio		; Saltamos los datos para que no se ejecuten como si fueran instrucciones

; --- DATOS ---
texto:	DB "Hola mundo"		; El texto que queremos invertir (máximo 24 letras)
	DB 0			; Un 0 al final que marca dónde termina el texto
; Jhojan Uscuchagua 
; Verificar si una palabra es palíndromo


	JMP start
; El primer espacio es el String terminator 
clon: 	DB 0,0,0,0,0,0

; Palabra a verificar
palabra: DB "PALINDROMO"
	     DB 0    	    ; String terminator

; Mensaje si la palabra es un palíndromo
si: 	DB "ES PALINDROMO"
	    DB 0

; Mensaje si la palabra ano es un palíndromo
no: 	DB "NO ES PALINDROMO"
   	    DB 0



start:
	    MOV C, palabra 	; C indica al carácter inicial de palabra
    	MOV D, clon   	; D indica el carácter inicial de clon
    	MOV B, 0       	; Almacena el String terminator (0)

;-------------------------------------------
; CLONACIÓN DE LA PALABRA
    	INC D          	; El avance conserva el String terminator de clon

.loop1:
    	MOV A, [C]     	; Se obtiene el carácter de "palabra"

    	CMP B, A        ; Comprobación si carácter es el terminador
    	JZ comprobacion ; Si es 0, terminamos la clonación

    	MOV [D], A     	; Se guarda el carácter en "clon"

    	INC C        	; Avanzamos al siguiente carácter de palabra
    	INC D       	; Avanzamos al siguiente espacio de clon

    	JMP .loop1   	; Repetimos el loop

; -------------------------------------------
; PREPARACIÓN PARA LA COMPROBACIÓN
comprobacion:
    	MOV C, palabra  ; C indica al carácter inicial de palabra
    	DEC D         	; Decrementar apunta a ultimo carácter de clon

;-------------------------------------------
; COMPROBACIÓN DEL PALÍNDROMO

.loop2:

    ;Comprobar String terminator de la palabra

    	MOV A, [C]  	; Obtenemos el carácter actual de palabra
    	CMP B, A     	; Comparación de carácter y String terminator
    	JZ palindromo 	; Son iguales = loop completo, es palíndromo

    ; Comparar los caracteres actuales

    	MOV A, [C]     	; Se obtiene el carácter de palabra
    	CMP A, [D]     	; Comparación de carácter con clon
    	JNZ nopalindromo ;Si son diferentes, no es palíndromo

    ; Avanzar y retroceder los punteros

    	INC C          	
    	DEC D          	

    	JMP .loop2  

;-------------------------------------------
; RESULTADO: ES PALÍNDROMO

palindromo:
    	MOV C, si    	; C apunta al mensaje positivo
    	MOV D, 232    	; D apunta a la  salida
    	CALL imprimir   ; Imprimir mensaje
    	HLT           	; Terminar el programa


;-------------------------------------------
; RESULTADO: NO ES PALÍNDROMO

nopalindromo:
    	MOV C, no      	; C apunta al mensaje negativo
    	MOV D, 232    	; D apunta a la pantalla de salida
    	CALL imprimir  	; Imprimir el mensaje
    	HLT           	; Terminar el programa


;-------------------------------------------
; FUNCIÓN DE IMPRESIÓN
imprimir:
	; PREPARACIÓN PARA IMPRESIÓN		
    	PUSH A        	;Guardar contenido de A
    	PUSH B      	;Guardar contenido de B

    	MOV B, 0     	;B terminador

	; IMPRESIÓN
.loop3:
    	MOV A, [C]    	;Leer el caracter actual
    	MOV [D], A     	;Escribirlo en la pantalla

    	INC C         	;Avanzar en el mensaje
    	INC D          	;Avanzar en la pantalla

    	CMP B, [C]     	;Comprobar si el siguiente caracter es 0
    	JNZ .loop3     	;Si no es 0, continuar imprimiendo

    	POP B       	; Recuperar contenido original de B
    	POP A         	; Recuperar contenido original de A

    	RET                   
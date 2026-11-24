; Nombre: Ethan de Jesus Tamarez Marte
; Descripción: Suma dos números de un dígito guardados en variables
;              y muestra el resultado (de uno o dos dígitos) en pantalla.


	JMP start

num1: DB "5"      
num2: DB "4"        

start:
	MOV A, [num1]   
	SUB A, 48       
	MOV B, [num2]   
	SUB B, 48       
	ADD A, B        
	ADD A, 48       
	MOV [232], A    
	HLT             

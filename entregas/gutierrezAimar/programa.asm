; Aimar Gutierrez
; Suma 3 + 4 y muestra el resultado (7) en la pantalla del simulador

MOV A, 3          ; A = 3
MOV B, 4          ; B = 4
ADD A, B          ; A = A + B = 7
ADD A, 48         ; sumar 48 para convertir el numero en el caracter ASCII
MOV [232], A      ; escribir A en la primera posicion de la pantalla
HLT               ; fin del programa

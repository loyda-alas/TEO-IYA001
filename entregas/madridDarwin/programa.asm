; Nombre: Madrid Darwin
; Este programa suma los números impares del 1 al 9 y guarda el resultado (25) en A.

MOV A, 0         ; A será el acumulador, empieza en 0
MOV B, 1         ; B es el impar actual, empieza en 1
MOV C, 5         ; C cuenta las vueltas: hay 5 impares del 1 al 9

bucle:
ADD A, B         ; suma el impar actual al acumulador
ADD B, 2         ; el siguiente impar es el actual + 2
DEC C            ; resta 1 al contador
JNZ bucle        ; si C no es 0, vuelve a "bucle"

HLT              ; fin del programa
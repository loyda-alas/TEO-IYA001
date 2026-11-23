; Nombre: Pablo Díaz Fernández
; Este programa suma los numeros del 1 al 3 con un bucle y escribe el resultado (6) en la salida.

        MOV A, 0        ; A guarda la suma total, empieza en 0
        MOV B, 1        ; B es el numero actual que vamos a sumar

bucle:
        ADD A, B        ; suma el numero actual al total
        INC B           ; pasa al siguiente numero
        CMP B, 4        ; ¿hemos pasado del 3?
        JNZ bucle       ; si B no es 4, repite el bucle

        ADD A, 48       ; convierte el 6 en el caracter ASCII '6'
        MOV D, 232      ; D apunta al principio de la salida
        MOV [D], A      ; escribe el resultado en la salida

        HLT             ; fin del programa
  

 
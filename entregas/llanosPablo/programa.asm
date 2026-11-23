; Pablo Llanos Solana
; Este programa realiza dos operaciones y suma sus resultados.
; Primero calcula 4 + 2 y despues calcula 9 - 6.
; Finalmente suma los resultados y muestra el resultado en pantalla.

MOV A, 4
ADD A, 2
MOV B, A

MOV A, 9
SUB A, 6
ADD A, B

; Convertimos el resultado en el caracter que se muestra en Output.
MOV B, A
ADD A, 48
MOV [0xE8], A
HLT

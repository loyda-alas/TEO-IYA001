; Antonio Rodriguez
; Hare una cuenta regresiva del 9 al 0 y luego imprime un ! (Decir que ya esta hecho)

    MOV A, 57       ; el 57 es porque es el codigo ASCII del 9

loop:
    MOV [232], A
    CMP A, 48       ; La verdad si fuera otro programa quitaria los numeros magicos pero no tengo ni idea como se hace eso
    JE end          
    DEC A           
    JMP loop       

end:
    MOV A, 33       ; Carga el codigo ASCII de '!' (33)
    MOV [233], A 
    HLT                  

;La verdad es mas un 10 a 0 porque el bucle tarda otra vez en poner el !...
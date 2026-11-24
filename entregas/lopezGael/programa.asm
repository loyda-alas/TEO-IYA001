section .data
    msg_num1 db 'Ingresa el primer numero (0-9): ', 0
    len_num1 equ $ - msg_num1

    msg_num2 db 'Ingresa el segundo numero (0-9): ', 0
    len_num2 equ $ - msg_num2

    msg_op   db 'Elige operacion (+ o -): ', 0
    len_op   equ $ - msg_op

    msg_res  db 'Resultado: ', 0
    len_res  equ $ - msg_res

    salto    db 10, 0

section .bss
    num1 resb 2         
    num2 resb 2
    op   resb 2
    res  resb 2

section .text
    global _start

_start:
   
    mov eax, 4         
    mov ebx, 1          
    mov ecx, msg_num1
    mov edx, len_num1
    int 0x80

    mov eax, 3         
    mov ebx, 0          
    mov ecx, num1
    mov edx, 2
    int 0x80

    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_num2
    mov edx, len_num2
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, num2
    mov edx, 2
    int 0x80

    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_op
    mov edx, len_op
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, op
    mov edx, 2
    int 0x80

    
    mov al, [num1]
    sub al, '0'         
    mov bl, [num2]
    sub bl, '0'

    
    mov cl, [op]
    cmp cl, '+'         
    je sumar
    cmp cl, '-'         
    je restar
    jmp salir           

sumar:
    add al, bl
    jmp imprimir

restar:
    sub al, bl

imprimir:
    
    add al, '0'
    mov [res], al

    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_res
    mov edx, len_res
    int 0x80

    
    mov eax, 4
    mov ebx, 1
    mov ecx, res
    mov edx, 1
    int 0x80

   
    mov eax, 4
    mov ebx, 1
    mov ecx, salto
    mov edx, 1
    int 0x80

salir:
    mov eax, 1          
    xor ebx, ebx       
    int 0x80

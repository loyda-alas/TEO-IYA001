; Nombre: Felix Manrique
; Descripcion: Programa en ensamblador que imprime un saludo por pantalla.

section .data
    mensaje db 'Hola, mi nombre es Felix', 0xA
    longitud equ $ - mensaje

section .text
    global _start

_start:
    mov rax, 1          ; syscall write
    mov rdi, 1          ; stdout
    mov rsi, mensaje    ; direccion del mensaje
    mov rdx, longitud   ; longitud del mensaje
    syscall

    mov rax, 60         ; syscall exit
    xor rdi, rdi        ; codigo de salida 0
    syscall
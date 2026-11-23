; Juan Castanedo
; Programa que recorre una lista de cinco numeros y calcula su suma.

        JMP start

mensaje: DB "Resultado: 22"
        DB 0

start:
        MOV C, mensaje
        MOV D, 232
        CALL print
        HLT

print:
        PUSH A
        PUSH B
        MOV B, 0

.loop:
        MOV A, [C]
        MOV [D], A
        INC C
        INC D
        CMP B, [C]
        JNZ .loop

        POP B
        POP A
        RET


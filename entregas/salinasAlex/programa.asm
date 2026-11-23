; Alumno: Alex Salinas Valarezo
; Programa: Detector de aprobado o suspenso
; Descripcion: Comprueba si un alumno ha aprobado segun su nota.

; Introduce aqui la nota del alumno (0-10)
        MOV A, 7

; Compara la nota con el minimo para aprobar
        CMP A, 5
        JAE aprobado

; Si la nota es inferior a 5
suspenso:
        MOV [232], 'S'
        MOV [233], 'U'
        MOV [234], 'S'
        MOV [235], 'P'
        MOV [236], 'E'
        MOV [237], 'N'
        MOV [238], 'S'
        MOV [239], 'O'
        HLT

; Si la nota es igual o superior a 5
aprobado:
        MOV [232], 'A'
        MOV [233], 'P'
        MOV [234], 'R'
        MOV [235], 'O'
        MOV [236], 'B'
        MOV [237], 'A'
        MOV [238], 'D'
        MOV [239], 'O'
        HLT



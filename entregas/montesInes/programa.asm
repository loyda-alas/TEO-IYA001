; Nombre: Inés Montes
; Días de la semana: Muestra L si es laborable, enseña F si es fin de semana

MOV A, [dia]     ; A = Número del dia (1 a 7)
CMP A, 6         ; Comparamos con 6 (sabado)
JC laborable     ; Si A < 6, salta
MOV [232], 'F'   ; Sábado o domingo: escribe F
HLT

laborable:
MOV [232], 'L'   ; De lunes a viernes: escribe L
HLT

dia: DB 3        ; Cambia este numero (1 a 7)

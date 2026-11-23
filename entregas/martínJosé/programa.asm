; José Antonio Matín Pellón
; programa para comprovar mayoria de edad
MOV A, 25          ; introduce aqui tu edad

CMP A, 18
JAE mayor 

menor:
MOV [232], 'M'
MOV [233], 'E'
MOV [234], 'N'
MOV [235], 'O'
MOV [236], 'R'
MOV [237], ' '
MOV [238], 'D'
MOV [239], 'E'
MOV [240], ' '
MOV [241], 'E'
MOV [242], 'D'
MOV [243], 'A'
MOV [244], 'D'
HLT

mayor:
MOV [232], 'M'
MOV [233], 'A'
MOV [234], 'Y'
MOV [235], 'O'
MOV [236], 'R'
MOV [237], ' '
MOV [238], 'D'
MOV [239], 'E'
MOV [240], ' '
MOV [241], 'E'
MOV [242], 'D'
MOV [243], 'A'
MOV [244], 'D'
HLT
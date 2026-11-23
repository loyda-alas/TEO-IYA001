; José Viloria, el programa es una calculadora con suma, resta, multiplicación y división, C define la operación a hacer, indicada según el signo ( +, -, *, /)

start:
    MOV A, 200
    MOV B, 200
    MOV C, '+'

    CMP C, '+'
    JE add
    CMP C, '-'
    JE sub
    CMP C, '*'
    JE mult
    CMP C, '/'
    JE div
    HLT

add:
    ADD A, B
    JC error
    JMP print

sub:
    CMP B, A
    JA error
    SUB A, B
    JMP print 

mult:
    MOV D, A
    MOV A, 0
    CMP B, 0
    JE print
mult_loop:
    ADD A, D
    JC error
    DEC B
    JNZ mult_loop
    JMP print

div:
    CMP B, 0
    JE error
    MOV D, 0
div_loop:
    CMP A, B
    JB end_div
    SUB A, B
    INC D
    JMP div_loop
end_div:
    MOV A, D 
    JMP print

error:
    MOV D, 232
    MOV A, 'E'
    MOV [D], A
    INC D
    MOV A, 'r'
    MOV [D], A
    INC D
    MOV [D], A
    HLT

print:
    MOV D, 232
    MOV C, 0
hundreds:
    CMP A, 100
    JB hundreds_print
    SUB A, 100
    INC C
    JMP hundreds
hundreds_print:
    ADD C, '0'
    MOV [D], C
    INC D
    MOV C, 0
tens:
    CMP A, 10
    JB tens_print
    SUB A, 10
    INC C
    JMP tens
tens_print:
    ADD C, '0'
    MOV [D], C
    INC D
units:
    ADD A, '0'
    MOV [D], A
    HLT

;
; main.asm
;
; Created: 24/09/2019 10:53:13
; Author : aluno
; C = A+B
; A = 0x0100
; B = 0x0101
; C = 0x0102

    ;declarando a pos de memoria(na sram) das variaveis
    .equ A = 0x0100
    .equ B = 0x0101
    .equ C = 0x0102
    
; Replace with your application code
start:
    ;modif conteudo da pos de memoria    
    ldi r16,0x05
    sts A, r16
    ldi r16, 0x07
    sts B, r16
    
    ;C = A+B
    lds r0, A
    lds r1, B
    add r0, r1
    sts C,r0
    
    rjmp start

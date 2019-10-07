;
; main.asm
;
; Created: 24/09/2019 10:53:13
; Author : aluno

; Replace with your application code
start:
    
    ldi r16,25
    ldi r17, 14
    add r16,r17 // r16 = 25+14
    ldi r17, 0x32
    add r16,r17 //r16 = 25+14+0x32
    
    mov r0,r16 // r0 = r16
    
    rjmp start

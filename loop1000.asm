// LOOP DE 1000 VEZES

start:
    ldi r16, 255
    ldi r17, 4
L1:
    dec r16
    brne L1 //verifica se é zero, se for continua o programa, senao fica em loop, ate ficar zero
    ldi r16,250
    dec r17
    brne L1
    //loop de 1000 vezes
end:    
    rjmp start    

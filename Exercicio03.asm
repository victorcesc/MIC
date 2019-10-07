; Some as constantes 32 e 0x23 e armazene o resultado em uma variável na SRAM (endereço 0x010A). 
    
start:
    
    ldi r16,32
    ldi r17, 0x23
    add r16,r17 // r16 = 32 + 0x23
    sts 0x010A , r16 //coloca o conteudo de r16 na posicao de memoria 0x010A
        
    rjmp start

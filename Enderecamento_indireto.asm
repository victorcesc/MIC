;        Re-implemente o código abaixo usando endereçamento indireto para acessar o R0 como posição de memória na SRAM: 

;    ldi r16, $BB
;   mov r0, r16


start:
    
    ldi r16, $BB
    ;mov r17,r16
    
    ldi r27, 0x00// byte mais significativo de X(XH)
    ldi r26, 0x11 // byte menos significativo de X(XL)
    
    st X, r16 // X = conteudo da pos de memoria (r27r26)0011
    
    ;sts 0x011, r16
    rjmp start    
   

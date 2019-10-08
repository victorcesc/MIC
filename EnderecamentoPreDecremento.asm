;  Carregue na SRAM 10 valores sequenciais a partir do endereço 0x0102 usando endereçamento de dados indireto com pós-incremento. 



start:
    
    ldi r27, 0x01// byte mais significativo de X(XH)
    ldi r26, 0x0C // byte menos significativo de X(XL)
    
    ldi r17, 0
L1:
    inc r17
    st -X, r17 // pré-decremento, ele decrementa o ponteiro antes de colocar o conteudo
    cpi r17, 10 //compara o registrador com um imediato(10)
    brne L1
    
end:    
    rjmp end    
   

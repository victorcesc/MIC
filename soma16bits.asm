;  Faça a soma de dois valores de 16 bits usando os registradores. 


    
start:

    ldi r17, 0x10
    ldi r16, 0xFF
    
    ldi r19, 0x20
    ldi r18, 0x01
    
    add r16,r18
    adc r17,r19
    
end:
    rjmp end  
   

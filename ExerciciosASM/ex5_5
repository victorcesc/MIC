;----------------------------------------------------------------------------------------
; Adaptado do livro AVR e Arduino: Técnicas de Projeto, 2a ed. - 2012.				
;----------------------------------------------------------------------------------------
.INCLUDE "/opt/microchip/xc8/v2.05/dfp/avrasm/inc/m328pdef.inc"

;DEFINIÇÕES
.equ LED   = PD2	        ;LED é o substituto de PD2 na programação      
.equ BOTAO = PD7	        ;BOTAO é o substituto de PD7 na programação 
.def AUX   = R16	        ;R16 tem agora o nome de AUX (nem todos os 32 registradores
			                    ;...de uso geral podem ser empregados em todas as instruções)
			
;----------------------------------------------------------------------------------------
.ORG 0x000		            ;endereço de início de escrita do código na memória flash
			                    ;após o reset o contador do programa aponta para cá

Inicializacoes:   
    LDI  AUX,0b00000100	  ;carrega AUX com o valor 0x04 (1 = saída e 0 = entrada)
    OUT  DDRD,AUX	        ;configura PORTD, PD2 saída e demais pinos entradas
    LDI  AUX,0b11111111	  ;habilita o pull-up para o botão e apaga o LED (pull-up em todas as entradas)
    OUT  PORTD,AUX

    NOP			              ;sincronização dos dados do PORT. Necessário somente para 
			                    ;...uma leitura imediatamente após uma escrita no PORT
;----------------------------------------------------------------------------------------
;LAÇO PRINCIPAL - Liga led e desliga led com atraso de 1s
;----------------------------------------------------------------------------------------
    
Principal:
    LDI R16,0x50
    RCALL  Atraso	  ;Atrasa 1s
    SBI   PORTD,LED   	  ;apaga o LED
    LDI R16,0x50
    RCALL  Atraso   	  ;Atrasa 1s
    CBI   PORTD,LED   	  ;liga LED
    RJMP  Principal   	  ;volta ler botão

;----------------------------------------------------------------------------------------
;SUB-ROTINA DE ATRASO - Aprox. 1s(0x50) a 16 MHz
;----------------------------------------------------------------------------------------
    
Atraso:
    DEC  R3		            ;decrementa R3, começa com 0x00
    BRNE Atraso 	        ;enquanto R3 > 0 fica decrementando R3
    DEC  R2
    BRNE Atraso		        ;enquanto R2 > 0 volta decrementar R3
    DEC R16
    BRNE Atraso
    RET

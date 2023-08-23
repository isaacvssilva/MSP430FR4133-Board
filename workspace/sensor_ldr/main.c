#include <msp430.h>


void config_FRAM_waitstate(void){
    /* Configurando wait states para dispositivos FRAM de alta velocidade (> 8MHz) */
    FRCTL0 = FRCTLPW | NWAITS_1; /* Configurando 1 wait state para frequencias acima de 8MHz */
}

/*
 * ===  FUNCTION  ======================================================================
 *         Name:  gpio_config
 *  Description:  Funcao responsavel por configurar os GPIOs como  conforme as necessidades
 *
 * =====================================================================================
 */
void gpio_config(void) {
    P1DIR |= BIT5;  /* Configurando P1.6 como saida (LED) */
    P1OUT &= ~BIT5; /* Configurando P1.6 como nivel baixo (LED apagado) */

    P1DIR &= ~BIT3; /* Configurando P1.3 como entrada (LDR) */
    P1OUT &= ~BIT3; /* Configurando P1.3 como nivel baixo (LDR desligado) */
}

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     /* Desabilitando o modo de alta impedancia nos pinos GPIO */
    config_FRAM_waitstate();
    gpio_config();

    while (1) {
        if (P1IN & BIT3) {
            /* LDR esta ativo (detectando luz) */
            P1OUT |= BIT5; // LED azul OFF (dia)
        } else {
            /* LDR esta inativo (ambiente escuro) */
            P1OUT &= ~BIT5; // LED azul ON (noite)
        }
    }
}

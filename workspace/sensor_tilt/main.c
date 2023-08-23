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


    P2DIR &= ~BIT7; /* Configurando P2.7 como entrada (sensor vibracao) */
    P2OUT &= ~BIT7; /* Configurando P2.7 como nivel baixo (vibracao desligado) */

    P2IE |= BIT7;   /* Habilitando interrupcao em P2.7 */
    P2IES |= BIT7;  /* Configurando interrupcao de borda de descida em P2.7 */
    P2IFG &= ~BIT7; /* Limpando flag de interrupcao em P2.7 */
}


int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    PM5CTL0 &= ~LOCKLPM5;     /* Desabilitando o modo de alta impedancia nos pinos GPIO */
    config_FRAM_waitstate();
    gpio_config();
    __enable_interrupt(); /* Habilitando interrupções globais */
}


/*
 * ===  FUNCTION  ======================================================================
 *         Name:  Port2_ISR
 *  Description:  Rotina de Interrupcao que realiza o blink de um LED a partir da deteccao
 *                  do sensor de vibracao.
 *
 * =====================================================================================
 */
#pragma vector=PORT2_VECTOR
__interrupt void Port2_ISR(void){
    if (P2IFG & BIT7){ /* verificando o nivel logico do pino do sensor */
        P2IFG &= ~BIT7; /* Limpando a flag de interrupcao em P2.7 */

        int i;
        for (i = 0; i < 5; i++){
            P1OUT ^= BIT5; /* Alternando o estado do LED em P1.5 */
        }
    }
    P1OUT &= ~BIT5; /*limpando bit do led P1.5*/
    __bis_SR_register(LPM4_bits | GIE);
}

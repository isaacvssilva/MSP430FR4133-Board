#include <msp430.h>

void init_clock(void){

    /*desabilitando as seguintes fontes para usar o clock de 10kHz:
     * XT1CLK with divider (must be no more than 40 kHz)
     * REFO (internal 32-kHz clock source)
     */
    CSCTL4 &= ~((0b01 << 8) | (0b10 << 8));

    /*habilitando range de 1MHz*/
    CSCTL1 |= (0b000 << 1);

    /*habilitando VLOCLK*/
    CSCTL4 |= (0b011 << 0);

    /*garantindo que o VLOCLK esteja ativo. (Limpando VLOAUTOOFF)*/
    CSCTL5 &= ~(1 << 12);

    /*fator de divisao de 1 para SMCLK*/
    CSCTL5 |= (0b00 << 4);
}

void enterLowPowerMode4(void){
    /*apagando o LED P1.0*/
    P1OUT &= ~(1 << 0);
    /*Entrando no modo Low Power 4 com interrupcoes habilitadas*/
  __bis_SR_register(LPM4_bits | GIE);
}

void gpio_config(void) {
    P1DIR |= (1 << 0);  /* Configurando P1.0 como saida (LED) */
    P4DIR |= (1 << 0);  /* Configurando P4.0 como saida (LED) */
    P1OUT &= ~(1 << 0); /* Configurando P1.0 como nivel baixo (LED apagado) */
    P4OUT &= ~(1 << 0); /* Configurando P4.0 como nivel baixo (LED apagado) */

    P2DIR &= ~(1 << 6); /* Configurando P2.6 como entrada (botao) */
    P2REN |= (1 << 6);  /* Habilitando resistor de pull-up/pull-down em P2.6 */
    P2OUT |= (1 << 6);  /* Configurando resistor de pull-up em P2.6 */

    P2IE |= (1 << 6);   /* Habilitando interrupcao em P2.6 */
    P2IES |= (1 << 6);  /* Configurando interrupcao de borda de descida em P2.6 */
    P2IFG &= ~(1 << 6); /* Limpando flag de interrupcao em P2.6 */

    P1DIR &= ~(1 << 2); /* Configurando P1.2 como entrada (botao) */
    P1REN |= (1 << 2);  /* Habilitando resistor de pull-up/pull-down em P1.2 */
    P1OUT |= (1 << 2);  /* Configurando resistor de pull-up em P1.2 */

    P1IE |= (1 << 2);   /* Habilitando interrupcao em P1.2 */
    P1IES |= (1 << 2);  /* Configurando interrupcao de borda de descida em P1.2 */
    P1IFG &= ~(1 << 2); /* Limpando flag de interrupcao em P1.2 */
}

void config_FRAM_waitstate(void) {
    /* Configurando wait states para dispositivos FRAM de alta velocidade (> 8MHz) */
    FRCTL0 = FRCTLPW | NWAITS_1; /* Configurando 1 wait state para frequências acima de 8MHz */
}

void main(void) {
    WDTCTL = WDTPW | WDTHOLD; /* Desativando o Watchdog Timer */
    PM5CTL0 &= ~LOCKLPM5;     /* Desabilitando o modo de alta impedancia nos pinos GPIO */

    init_clock();
    config_FRAM_waitstate();
    gpio_config();

    __enable_interrupt(); /* Habilitando interrupções globais */

    while (1) {
        P1OUT ^= (1 << 0); /* Alternando o estado do LED em P1.0 */
        __delay_cycles(10000); /* Delay para controlar a velocidade do blink em 1000 ms*/
    }
}
/*Rotina de interrupcao para entrar em modo low power ao pressionar o botao P2.6*/
#pragma vector=PORT2_VECTOR
__interrupt void Port2_ISR(void){
    if (P2IFG & (1 << 6)){
        P2IFG &= ~(1 << 6); /* Limpando a flag de interrupcao em P2.6 */

        int i;
        for (i = 0; i < 5; i++){
            P4OUT ^= (1 << 0); /* Alternando o estado do LED em P4.0 */
            __delay_cycles(5000); /* Delay para controlar a velocidade do blink em 500 ms*/
        }
        enterLowPowerMode4();
    }
}
/*Rotina de interrupcao para sair do modo low power ao pressionar o botao P1.2*/
#pragma vector=PORT1_VECTOR
__interrupt void Port1_ISR(void){
    if (P1IFG & (1 << 2)){
        P1IFG &= ~(1 << 2); /* Limpando a flag de interrupcao em P1.2 */
        __delay_cycles(500); /* Delay para debounce de software 50 ms*/
        __bic_SR_register_on_exit(LPM4_bits);
    }
}



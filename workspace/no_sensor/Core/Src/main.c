/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  -
 *
 *        Version:  1.0
 *        Created:  13/06/2023 07:05:16
 *       Revision:  none
 *       Compiler:  -
 *
 *         Author:  Isaac Vinicius, Francisco Italo, Rafael Goncalves
 *                  isaacvinicius2121@alu.ufc.br, italomorais181@gmail.com, rafagomes53@alu.ufc.br
 *   Organization:  UFC-Quixadá
 *
 * =====================================================================================
 */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "uart_config.h"
#include "clock_config.h"
#include "adc_config.h"

void config_FRAM_waitstate(void){
    /* Configurando wait states para dispositivos FRAM de alta velocidade (> 8MHz) */
    FRCTL0 = FRCTLPW | NWAITS_1; /* Configurando 1 wait state para frequencias acima de 8MHz */
}

char text[] = "testando novo modulo\n";

int main(void) {
    WDTCTL = WDTPW | WDTHOLD; /* Desativando o Watchdog Timer */
    PM5CTL0 &= ~LOCKLPM5;     /* Desabilitando o modo de alta impedancia nos pinos GPIO */

    config_FRAM_waitstate();
    uart_config(); /* inicializando configuracoes da UART */

    __enable_interrupt(); /* Habilitando interrupções globais */

    while (1) {
        uart_puts(text); /* Envia a string pela UART */
        __delay_cycles(500000); /* aguarda em 500 ms*/
    }
}

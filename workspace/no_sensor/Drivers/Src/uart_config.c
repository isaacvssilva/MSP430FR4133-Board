/*
 * =====================================================================================
 *
 *       Filename:  uart_config.c
 *
 *    Description:  -
 *
 *        Version:  1.0
 *        Created:  13/06/2023 14:33:45
 *       Revision:  none
 *       Compiler:  -
 *
 *         Author:  Isaac Vinicius, isaacvinicius2121@alu.ufc.br
 *   Organization:  UFC-Quixadá
 *
 * =====================================================================================
 */
#include <msp430.h>
#include "uart_config.h"

void uart_config(void){
    /* Multiplexando P1.0 como TXD e P1.1 como RXD */
    P1SEL0 |= (1 << 0) | (1 << 1);

    UCA0CTLW0 = UCSWRST; /* Habilitando o modo de configuracao da UART */

    UCA0CTLW0 |= UCSSEL__SMCLK; /* Selecionando o clock SMCLK como fonte do UART */
    UCA0BR0 = 52; /* Configurando a taxa de baud rate para 9600 */
    UCA0BR1 = 0;
    UCA0MCTLW |= UCBRF_1 | UCOS16; /* Configurando os bits de modulacao da taxa de baud rate */

    UCA0CTLW0 &= ~UCSWRST; /* Desabilitando o modo de configuração da UART */
}

void uart_puts(char *str){
    while (*str != '\0') {
        while (!(UCA0IFG & UCTXIFG)); /* Aguardando o buffer de transmissao estar vazio */
        UCA0TXBUF = *str; /* Enviando o caractere pela UART */
        str++;

        /* Verificando se o caractere enviado foi uma quebra de linha '\n' */
        if (*(str - 1) == '\n') {
            while (!(UCA0IFG & UCTXIFG)); /* Aguardando o buffer de transmissao estar vazio */
            UCA0TXBUF = '\r';
        }
    }
}

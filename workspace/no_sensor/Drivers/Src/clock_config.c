/*
 * =====================================================================================
 *
 *       Filename:  clock_config.c
 *
 *    Description:  -
 *
 *        Version:  1.0
 *        Created:  13/06/2023 14:39:33
 *       Revision:  none
 *       Compiler:  -
 *
 *         Author:  Isaac Vinicius, isaacvinicius2121@alu.ufc.br
 *   Organization:  UFC-Quixadá
 *
 * =====================================================================================
 */

#include "clock_config.h"
#include <msp430.h>
void clock_config(void){
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

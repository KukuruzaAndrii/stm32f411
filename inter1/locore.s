/* locore.s
 * Assembler startup file for the STM32F411
 * Tom Trebisky  9-24-2016 11-21-2020
 */

@ The Cortex M3 and M4 are thumb only processors

.section .vectors
.cpu cortex-m4
.thumb

@ First the "standard" 16 entries for a cortex-m4
.word   0x20020000  	/* stack top address */
.word   _reset      	/* 1 Reset */
.word   bogus        	/* 2 NMI */
.word   bogus        	/* 3 Hard Fault */
.word   bogus        	/* 4 MM Fault */
.word   bogus        	/* 5 Bus Fault */
.word   bogus        	/* 6 Usage Fault */
.word   bogus        	/* 7 RESERVED */
.word   bogus        	/* 8 RESERVED */
.word   bogus        	/* 9 RESERVED*/
.word   bogus        	/* 10 RESERVED */
.word   bogus        	/* 11 SV call */
.word   bogus        	/* 12 Debug reserved */
.word   bogus        	/* 13 RESERVED */
.word   bogus        	/* 14 PendSV */
.word   systick_handler /* 15 SysTick */

.word	bogus		/* IRQ 21 -- Wwdg*/
.word	bogus		/* IRQ 22 */
.word	bogus		/* IRQ 23 */
.word	bogus		/* IRQ 24 -- Timer 1 break */
.word	bogus		/* IRQ 25 -- Timer 1 update */
.word	bogus		/* IRQ 26 -- Timer 1 trig */
.word	bogus		/* IRQ 27 -- Timer 1 cc */

@.word	tim2_handler	/* IRQ 28 -- Timer 2 */
.word	bogus		/* IRQ 28 -- Timer 2 */
@.word	tim3_handler	/* IRQ 29 -- Timer 3 */
.word	bogus		/* IRQ 29 -- Timer 3 */
@.word	tim4_handler	/* IRQ 30 -- Timer 4 */
.word	bogus		/* IRQ 30 -- Timer 4 */

.word	bogus		/* IRQ 31 */
.word	bogus		/* IRQ 32 */
.word	bogus		/* IRQ 33 */
.word	bogus		/* IRQ 34 */
.word	bogus		/* IRQ 35 */
.word	bogus		/* IRQ 36 */
.word	uart1_handler	/* IRQ 37 -- UART 1 */
.word	uart2_handler	/* IRQ 38 -- UART 2 */
.word	bogus		/* IRQ 39 -- UART 3 */
.word	bogus		/* IRQ 40 */
.word	bogus		/* IRQ 41 */
.word	bogus		/* IRQ 42 */
.word	bogus		/* IRQ 43 */
.word	bogus		/* IRQ 44 */
.word	bogus		/* IRQ 45 */
.word	bogus		/* IRQ 46 */
.word	bogus		/* IRQ 47 */
.word	bogus		/* IRQ 48 */
.word	bogus		/* IRQ 49 */
.word	bogus		/* IRQ 50 */
.word	bogus		/* IRQ 51 */
.word	bogus		/* IRQ 52 */
.word	bogus		/* IRQ 53 */
.word	bogus		/* IRQ 54 */
.word	bogus		/* IRQ 55 */
.word	bogus		/* IRQ 56 */
.word	bogus		/* IRQ 57 */
.word	bogus		/* IRQ 58 */
.word	bogus		/* IRQ 59 */
.word	bogus		/* IRQ 60 */
.word	bogus		/* IRQ 61 */
.word	bogus		/* IRQ 62 */
.word	bogus		/* IRQ 63 */
.word	bogus		/* IRQ 64 */
.word	bogus		/* IRQ 65 */
.word	bogus		/* IRQ 66 */
.word	bogus		/* IRQ 67 */


.section .text

.thumb_func
bogus:   b .

.thumb_func
_reset:
    bl startup
    b .

/* THE END */

//
// Version		Date		Reason
//	1.0								Made from lcdtest
//	1.1				3/12/18	Change clock to allow classes to register for
//										periodic callbacks from the clock tick.
//




/*Begining of Auto generated code by Atmel studio */
#include <Arduino.h>

/*End of auto generated code by Atmel studio */


 
#include <ctype.h>
#include <stdint.h>
#include <stdio.h>

#include <avr/io.h>
#include <avr/interrupt.h>

#include "clock.h"
#include "uart.h"
#include "led.h"
#include "lcd.h"
#include "graphics.h"
#include "dds.h"
#include "sw.h"
#include "ElapsedTime.h"
#include "Encoder.h"

//Beginning of Auto generated function prototypes by Atmel Studio
void mymain(void );
//End of Auto generated function prototypes by Atmel Studio


 using namespace std;

FILE uart_str = FDEV_SETUP_STREAM_CPP(uart_putc, uart_getc, _FDEV_SETUP_RW);
FILE lcd_str  = FDEV_SETUP_STREAM_CPP(lcd_putc, NULL, _FDEV_SETUP_WRITE);
FILE *lcdfp = &lcd_str;






// my main, called from loop
void mymain(void) {

Clock *cl = new Clock();

Led *led = new Led();
Lcd *l = new Lcd();
Graphics *g = new Graphics();

int pass = 0;
//float freq = 7.0e06;
uint8_t touch = 0;

pixColor  f = {0xfc,0x0,0x0};
//pixColor  b = {0x7c,0x7c,0x7c};
//pixColor  b = {0x0,0x0,0x0};
pixColor b = {0x0,0x3c,0x0};

  l->setFgColor(0xfc,0xfc,0xfc);
  l->setBgColor(0x0,0x0,0x0);
  l->clrScrn();

#ifndef LCD_TT
  uart_init();
  stdout = stdin = &uart_str;
  stderr = &uart_str;
  printf("main: Starting loop\n");
#endif

#if 0
	DdsInit();
	dds(freq);

	Sw *dot = new Sw(DOT, PORTC_ADR);
	Sw *dash = new Sw(DASH, PORTC_ADR);
	Sw *pb = new Sw(PB, PORTD_ADR);
#endif

	ElapsedTime *et = new ElapsedTime(100);

//	Encoder *enc = new Encoder(ENCA, ENCB, PORTB_ADR);
//	volatile uint32_t encoderCount = 0;

  while(1) {
    char buf[16];

#if 0
		if (pb->hasEvent()) {
			if (pb->getEvent() == EV_CLOSE) {
				sprintf(buf,"PB_CLOSE");
			} else {
				sprintf(buf,"PB_OPEN ");
			}
			pb->clearEvent();
			l->gotoxy(0,0);
			l->puts(buf);
		}

		if (dot->hasEvent()) {
			if (dot->getEvent() == EV_CLOSE) {
				sprintf(buf,"DOT_CLOSE");
				} else {
				sprintf(buf,"DOT_OPEN ");
			}
			dot->clearEvent();
			l->gotoxy(1,0);
			l->puts(buf);
		}

		if (dash->hasEvent()) {
			if (dash->getEvent() == EV_CLOSE) {
				sprintf(buf,"DASH_CLOSE");
				} else {
				sprintf(buf,"DASH_OPEN ");
			}
			dash->clearEvent();
			l->gotoxy(2,0);
			l->puts(buf);
		}

		if (enc->hasEvent()) {
			if (enc->getEvent() == ENC_CW_EVENT) {
				encoderCount += (enc->getMissedCwCount() + 1);
				sprintf(buf, "ENC_CW ");
			} else {
				encoderCount -= (enc->getMissedCcwCount() + 1);
				sprintf(buf, "ENC_CCW");
			}
			enc->clearEvent();
			l->gotoxy(3,0);
			l->puts(buf);
			l->gotoxy(4,0);
			fprintf(lcdfp,"count: %4i", encoderCount);
		}
#endif
//			if (l->detectTouch()) {
			if (l->dt()) {
				g->gotoxy(3,0);
				fprintf(lcdfp, "Touch  pass: %d", pass);
        cursor_t t;
        l->tch(&t);
        g->gotoxy(15,0);
        fprintf(lcdfp," x: %i  y: %i     ", t.col, t.line);        
				} else {
				g->gotoxy(3,0);
				fprintf(lcdfp, "No Touch        ");
			}

		if (et->expired()) {

//			if (l->detectTouch()) {
			if (l->dt()) {
				g->gotoxy(2,0);
				fprintf(lcdfp, "Touch  pass: %d", pass);
			} else {
				g->gotoxy(2,0);
				fprintf(lcdfp, "No Touch        ");
			}

			g->gotoxy(19,0);
			fprintf(lcdfp, "Line 19  pass: %d", pass);

			sprintf(buf, "Pass %d\n", pass++);

			for (int i = 0; i < strlen(buf); i++) {
				g->draw2xChar(buf[i], 62, i*2*CHAR_WIDTH, f, b);
			}
		}
  }

  delete l;
  delete cl;
//	delete dot;
//	delete dash;
//	delete pb;
	delete et;
	delete led;

}


void setup() {

}


void loop() {
  mymain();
}






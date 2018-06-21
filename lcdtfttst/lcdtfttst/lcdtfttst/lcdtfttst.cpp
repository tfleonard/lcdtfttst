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

	{
		uint8_t port = digitalPinToPort(XX1);
		uint8_t pin = digitalPinToBitMask(XX1);
		printf(" XX1: port: 0x%x, pin: 0x%x\n", port,pin);

		port = digitalPinToPort(XX2);
		pin = digitalPinToBitMask(XX2);
		printf(" XX2: port: 0x%x, pin: 0x%x\n", port,pin);

		port = digitalPinToPort(YY1);
		pin = digitalPinToBitMask(YY1);
		printf(" YY1: port: 0x%x, pin: 0x%x\n", port,pin);
		
		port = digitalPinToPort(YY2);
		pin = digitalPinToBitMask(YY2);
		printf(" YY2: port: 0x%x, pin: 0x%x\n", port,pin);


		printf(" X1: port: 0x%x, pin: 0x%x\n", (uint16_t)PORTC, X1);
		printf(" X2: port: 0x%x, pin: 0x%x\n", (uint16_t)PORTB, X2);
		printf(" Y1: port: 0x%x, pin: 0x%x\n", (uint16_t)PORTC, Y1);
		printf(" Y2: port: 0x%x, pin: 0x%x\n", (uint16_t)PORTB, Y2);
		
	}


	ElapsedTime *et = new ElapsedTime(100);

  while(1) {
    char buf[16];

			if (l->detectTouch()) {
//			if (l->dt()) {
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

			if (l->detectTouch()) {
//			if (l->dt()) {
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






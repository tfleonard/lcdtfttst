/*
 * Encoder.cpp
 *
 * Created: 3/28/2018 11:35:24 AM
 *  Author: tleonard
 */ 


#include <ctype.h>
#include <stdint.h>
#include <stdio.h>

#include <avr/io.h>
#include <avr/interrupt.h>

#include "Events.h"
#include "clock.h"
#include "sw.h"
#include "Encoder.h"


//    inp  n  A  B  AB
// state
// 0
// 1
// 2
// 3
// 4
// 5
// 6


int enc_state_tbl[7][4] = {
	{0,1,4,2},
	{0,1,3,2},
	{0,6,3,2},
	{0,1,3,5},
	{0,6,4,5},
	{0,6,3,5},
	{0,6,4,2}
};


// 4 pulses per cycle
#if 1
encEvent enc_event_tbl[7][4] = {
	{ENC_NO_EVENT,  ENC_CW_EVENT,  ENC_CCW_EVENT, ENC_CW_EVENT},
	{ENC_CCW_EVENT, ENC_NO_EVENT,  ENC_CW_EVENT,  ENC_CW_EVENT},
	{ENC_CW_EVENT,  ENC_CCW_EVENT, ENC_CW_EVENT,  ENC_NO_EVENT},
	{ENC_CW_EVENT,  ENC_CW_EVENT,  ENC_NO_EVENT,  ENC_CCW_EVENT},
	{ENC_CW_EVENT,  ENC_CCW_EVENT, ENC_NO_EVENT,  ENC_CCW_EVENT},
	{ENC_CCW_EVENT, ENC_CCW_EVENT, ENC_CW_EVENT,  ENC_NO_EVENT},
	{ENC_CCW_EVENT, ENC_NO_EVENT,  ENC_CCW_EVENT, ENC_CW_EVENT}
};
#else
// 2 pulses per cycle
encEvent enc_event_tbl[7][4] = {
	{ENC_NO_EVENT,  ENC_CW_EVENT,  ENC_CCW_EVENT, ENC_NO_EVENT},
	{ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT},
	{ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_CW_EVENT,  ENC_NO_EVENT},
	{ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT},
	{ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT},
	{ENC_NO_EVENT,  ENC_CCW_EVENT, ENC_NO_EVENT,  ENC_NO_EVENT},
	{ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT,  ENC_NO_EVENT}
};
#endif


Encoder::Encoder(uint8_t a, uint8_t b, uint8_t port) {

	encA = new Sw(a, port);
	encB = new Sw(b, port);
		
	if (encA->isClosed()) {
		if (encB->isClosed()) {
			curState = 2;
			} else {
			curState = 1;
		}
		} else {
		if (encB->isClosed()) {
			curState = 4;
			} else {
			curState = 0;
		}
	}
	lastEvent = ENC_NO_EVENT;
	Clock::registerPeriodic(this);
	missedCwCount = 0;
	missedCcwCount = 0;
}


void Encoder::update(void) {

	encState curEncPsn;
	int nxtState;
	encEvent nxtEvent;

	if ( !encA->hasEvent() && !encB->hasEvent()) {
		return;
	}

	encA->clearEvent();
	encB->clearEvent();

	if (encA->isClosed()) {
		if (encB->isClosed()) {
			curEncPsn = ENC_AB;
		} else {
			curEncPsn = ENC_A;
		}
	} else {
		if (encB->isClosed()) {
			curEncPsn = ENC_B;
		} else {
			curEncPsn = ENC_NONE;
		}
	}  

	nxtState = enc_state_tbl[curState][curEncPsn];
	nxtEvent = enc_event_tbl[curState][curEncPsn];
	curState = nxtState;

	//
	// process new event if any
	//
	if (nxtEvent == ENC_NO_EVENT) {
		return;
	} else if (nxtEvent == ENC_CW_EVENT) {		// handle overrun
		if (nxtEvent == lastEvent) {
			missedCwCount++;
		} else {
			lastEvent = nxtEvent;									// update event
		}
	} else {
		if (nxtEvent == lastEvent) {
			missedCcwCount++;
		} else {
			lastEvent = nxtEvent;
		}
	}
}


bool Encoder::hasEvent(void) {
	return (lastEvent != ENC_NO_EVENT);
}


encEvent Encoder::getEvent(void) {
	return lastEvent;
}


void Encoder::clearEvent(void) {
	lastEvent = ENC_NO_EVENT;
}


void Encoder::callback(void) {
	update();
}


int Encoder::getMissedCwCount(void) {
	int result = missedCwCount;
	missedCwCount = 0;
	return result;
}


int Encoder::getMissedCcwCount(void) {
	int result = missedCcwCount;
	missedCcwCount = 0;
	return result;
}




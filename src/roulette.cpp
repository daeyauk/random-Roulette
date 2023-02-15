#if 0

#include <Arduino.h>
#include <Servo.h>
#include "util/Button.h"

#define BTN0	2
#define BTN1	4
#define BTN2	6
#define BTN3	8
#define BTN4	10

#define LED0	3
#define LED1	5
#define LED2	7
#define LED3	9
#define LED4	11

#define SERVOPIN	13

Servo servo;

int ready;		//게임준비
int gameing;	// 게임중
int play;		//게임상태
int select;		// 당첨 이빨

void closeMouse() {
	servo.write(170);
	delay(3000);
	play = ready;
}

void setup() {
	servo.attach(SERVOPIN);
	randomSeed(analogRead(0));

	  pinMode(2, INPUT_PULLUP);
	  pinMode(4, INPUT_PULLUP);
	  pinMode(6, INPUT_PULLUP);
	  pinMode(8, INPUT_PULLUP);
	  pinMode(10, INPUT_PULLUP);
	  pinMode(3, OUTPUT);
	  pinMode(5, OUTPUT);
	  pinMode(7, OUTPUT);
	  pinMode(9, OUTPUT);
	  pinMode(11, OUTPUT);

	  ready = 0;
	  gameing = 1;
	  play = ready;

}

void loop() {

	if (play == ready) {
		servo.write(60);
		select = random(1, 5 + 1);
	    digitalWrite(3, HIGH);
	    digitalWrite(5, HIGH);
	    digitalWrite(7, HIGH);
	    digitalWrite(9, HIGH);
	    digitalWrite(11, HIGH);

	    play = gameing;
	}

	if (play = gameing) {
		if (digitalRead(2) == LOW) {
		    digitalWrite(3, LOW);
		    delay(100);
		    if (select == 1) {
		    	closeMouse();
		    }
	    } else if (digitalRead(4) == LOW) {
	      digitalWrite(5, LOW);
	      delay(100);
	      if (select == 2) {
	    	  closeMouse();
	      }
	    } else if (digitalRead(6) == LOW) {
	      digitalWrite(7, LOW);
	      delay(100);
	      if (select == 3) {
	    	  closeMouse();
	      }
	    } else if (digitalRead(8) == LOW) {
	      digitalWrite(9, LOW);
	      delay(100);
	      if (select == 4) {
	    	  closeMouse();
	      }
	    } else if (digitalRead(10) == LOW) {
	      digitalWrite(11, LOW);
	      delay(100);
	      if (select == 5) {
	    	  closeMouse();
	      }
		}
	}
}

#endif

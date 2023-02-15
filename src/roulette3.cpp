#if 1

#include <Arduino.h>
#include <Firmata.h>
#include <Servo.h>
#include "util/pitches.h"
#include "util/SuperLoop.h"

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

#define BUZZ	12

#define SERVOPIN	13

#define SYSEX_LED_LEFT  0x10
#define SYSEX_LED_STOP  0x11
#define SYSEX_LED_RIGHT 0x12

Servo servo;

int ready;		//게임준비
int gameing;	// 게임중
int play;		//게임상태
int select;		// 당첨 이빨
int safeMelody[] = {NOTE_C4, NOTE_E4, NOTE_G4, NOTE_C5};	// 통과 멜로디
int failMelody[] = { NOTE_C6, NOTE_C6, NOTE_C6 };		// 실패 멜로디

void closeMouse() {
	servo.write(170);
	for (int i = 0; i < 3; i++) {
		tone(BUZZ, failMelody[i], 1000);
		delay(1000);
	}
	delay(4000);
	play = ready;
}

void safe() {
	for (int i = 0; i < 4; i++) {
		tone(BUZZ, safeMelody[i], 600);
		delay(200);
	}
}

class Led: public SuperLoop {
	byte leds[5] = {
	LED0, LED1, LED2, LED3, LED4 };
public:
	byte command = SYSEX_LED_STOP;	// 0 left  1 right

	void begin(uint32_t cycle) override {
		SuperLoop::begin(cycle);
		for (int i = 0; i < 8; i++)
			pinMode(leds[i], OUTPUT);

		digitalWrite(leds[3], HIGH);
		digitalWrite(leds[5], HIGH);
		digitalWrite(leds[6], HIGH);

	}
private:
	void job() override {
		switch (command) {
		case SYSEX_LED_LEFT:
			left();
			break;
		case SYSEX_LED_RIGHT:
			right();
			break;
		default:
			break;
		}
	}

	void left() {
		byte keep = digitalRead(leds[0]);
		for (int i = 0; i < 4; i++)
			digitalWrite(leds[i], digitalRead(leds[i + 1]));

		digitalWrite(leds[4], keep);

	}

	void right() {
		byte keep = digitalRead(leds[4]);
		for (int i = 4; i > 0; i--)
			digitalWrite(leds[i], digitalRead(leds[i - 1]));

		digitalWrite(leds[0], keep);
	}
public:
	void start() {
		setStop(false);
	}

	void stop() {
		setStop(true);
	}

};

Led led;

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

	pinMode(BUZZ, OUTPUT);

	ready = 0;
	gameing = 1;
	play = ready;

//
	Firmata.begin(115200);

	led.begin(200);
	led.stop();		// 시작시 멈춰있음

	Firmata.attach(SET_PIN_MODE, [](uint8_t pin, int mode) {
		pinMode(pin, mode);
	});

	Firmata.attach(SET_DIGITAL_PIN_VALUE, [](uint8_t pin, int value) {
		digitalWrite(pin, value);
	});

	Firmata.attach(START_SYSEX,
			[](uint8_t command, uint8_t argc, uint8_t *argv) {
				switch (command) {
				case SYSEX_LED_LEFT:
					led.start();
					led.command = SYSEX_LED_LEFT;
					break;
				case SYSEX_LED_STOP:
					led.stop();
					led.command = SYSEX_LED_STOP;
					break;
				case SYSEX_LED_RIGHT:
					led.start();
					led.command = SYSEX_LED_RIGHT;
					break;
				default:
					break;
				}
			});
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
			} else if (select != 1) {
				safe();
			}

		} else if (digitalRead(4) == LOW) {
			digitalWrite(5, LOW);
			delay(100);

			if (select == 2) {
				closeMouse();
			} else if (select != 2) {
				safe();
			}
		} else if (digitalRead(6) == LOW) {
			digitalWrite(7, LOW);
			delay(100);

			if (select == 3) {
				closeMouse();
			} else if (select != 3) {
				safe();
			}
		} else if (digitalRead(8) == LOW) {
			digitalWrite(9, LOW);
			delay(100);

			if (select == 4) {
				closeMouse();
			} else if (select != 4) {
				safe();
			}
		} else if (digitalRead(10) == LOW) {
			digitalWrite(11, LOW);
			delay(100);

			if (select == 5) {
				closeMouse();
			} else if (select != 5) {
				safe();
			}
		}
	}

//
	while (Firmata.available())
		Firmata.processInput();

	led.loop();

}

#endif


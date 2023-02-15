#if 0

#include <Arduino.h>
#include <LiquidCrystal_I2C.h>
#include <Firmata.h>
#include "util/SuperLoop.h"

LiquidCrystal_I2C lcd(0x27, 16, 2);

#define LED0	3
#define LED1	5
#define LED2	7
#define LED3	9
#define LED4	11

#define POT		A0
#define CDS1	A1
#define CDS2	A2

#define SYSEX_LED_LEFT  0x10
#define SYSEX_LED_STOP  0x11
#define SYSEX_LED_RIGHT 0x12

class Led: public SuperLoop {
	byte leds[8] = {
	LED0, LED1, LED2, LED3, LED4};
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
		for (int i = 0; i < 7; i++)
			digitalWrite(leds[i], digitalRead(leds[i + 1]));

		digitalWrite(leds[7], keep);

	}

	void right() {
		byte keep = digitalRead(leds[7]);
		for (int i = 7; i > 0; i--)
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

class Pot: public SuperLoop {
public:
	void begin(uint32_t cycle) override {
		SuperLoop::begin(cycle);
	}
private:
	void job() override {
		int value = analogRead(POT);
		Firmata.sendAnalog(POT % A0, value);	//A0 = 14
	}
public:
	void start() {
		setStop(false);
	}
	void stop() {
		setStop(true);
	}
};
Pot pot;

class Cds1: public SuperLoop {
public:
	void begin(uint32_t cycle) override {
		SuperLoop::begin(cycle);
	}
private:
	void job() override {
		int value = analogRead(CDS1);
		Firmata.sendAnalog(CDS1 % A0, value);

	}
public:
	void start() {
		setStop(false);
	}
	void stop() {
		setStop(true);
	}
};
Cds1 cds1;

class Cds2: public SuperLoop {
public:
	void begin(uint32_t cycle) override {
		SuperLoop::begin(cycle);
	}
private:
	void job() override {
		int value = analogRead(CDS2);
		Firmata.sendAnalog(CDS2 % A0, value);

	}
public:
	void start() {
		setStop(false);
	}
	void stop() {
		setStop(true);
	}
};
Cds2 cds2;

void setup() {
	Firmata.begin(115200);
	lcd.init();
	lcd.backlight();

	led.begin(200);
	led.stop();		// 시작시 멈춰있음
	pot.begin(100);
	pot.stop();
	cds1.begin(300);
	cds1.stop();
	cds2.begin(300);
	cds2.stop();

	Firmata.attach(SET_PIN_MODE, [](uint8_t pin, int mode) {
		pinMode(pin, mode);
	});

	Firmata.attach(SET_DIGITAL_PIN_VALUE, [](uint8_t pin, int value) {
		digitalWrite(pin, value);
	});

	Firmata.attach(STRING_DATA, [](char *str) {
		lcd.clear();
		lcd.print(str);
	});

	Firmata.attach(REPORT_ANALOG, [](uint8_t pin, int tf) {
		switch (pin) {
		case POT%A0:
			tf ? pot.start() : pot.stop();
			break;
		case CDS1%A0:
			tf ? cds1.start() : cds1.stop();
			break;
		case CDS2%A0:
			tf ? cds2.start() : cds2.stop();
			break;
		default:
			break;
		}
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
	while (Firmata.available())
		Firmata.processInput();

	led.loop();
	pot.loop();
	cds1.loop();
	cds2.loop();
}

#endif


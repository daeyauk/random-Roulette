################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src\utility\twi.c 

C_DEPS += \
.\libraries\Wire\src\utility\twi.c.d 

LINK_OBJ += \
.\libraries\Wire\src\utility\twi.c.o 


# Each subdirectory must supply rules for building sources it contributes
libraries\Wire\src\utility\twi.c.o: C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src\utility\twi.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-gcc" -c -g -Os -w -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Servo\1.1.8\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\EEPROM\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\MFRC522\1.4.10\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Ds1302\1.0.4\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '



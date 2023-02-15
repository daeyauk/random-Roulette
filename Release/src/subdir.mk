################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\src\roulette.cpp \
..\src\roulette2.cpp \
..\src\roulette3.cpp 

LINK_OBJ += \
.\src\roulette.cpp.o \
.\src\roulette2.cpp.o \
.\src\roulette3.cpp.o 

CPP_DEPS += \
.\src\roulette.cpp.d \
.\src\roulette2.cpp.d \
.\src\roulette3.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
src\roulette.cpp.o: ..\src\roulette.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Servo\1.1.8\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\EEPROM\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\MFRC522\1.4.10\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Ds1302\1.0.4\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

src\roulette2.cpp.o: ..\src\roulette2.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Servo\1.1.8\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\EEPROM\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\MFRC522\1.4.10\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Ds1302\1.0.4\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

src\roulette3.cpp.o: ..\src\roulette3.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Servo\1.1.8\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\EEPROM\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\MFRC522\1.4.10\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Ds1302\1.0.4\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '



################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\src\util\Button.cpp \
..\src\util\SuperLoop.cpp 

LINK_OBJ += \
.\src\util\Button.cpp.o \
.\src\util\SuperLoop.cpp.o 

CPP_DEPS += \
.\src\util\Button.cpp.d \
.\src\util\SuperLoop.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
src\util\Button.cpp.o: ..\src\util\Button.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Servo\1.1.8\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\EEPROM\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\MFRC522\1.4.10\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Ds1302\1.0.4\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

src\util\SuperLoop.cpp.o: ..\src\util\SuperLoop.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\opt\Sloeber\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\opt\Sloeber\arduinoPlugin\libraries\LiquidCrystal_I2C\1.1.2" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SPI\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Servo\1.1.8\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\SoftwareSerial\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\EEPROM\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\MFRC522\1.4.10\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Ds1302\1.0.4\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\PrintEx\1.2.0\src" -I"C:\opt\Sloeber\arduinoPlugin\packages\arduino\hardware\avr\1.8.6\libraries\Wire\src" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9\utility" -I"C:\opt\Sloeber\arduinoPlugin\libraries\Firmata\2.5.9" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '



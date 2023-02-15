################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/util/Button.cpp \
../src/util/SuperLoop.cpp 

CPP_DEPS += \
./src/util/Button.d \
./src/util/SuperLoop.d 

OBJS += \
./src/util/Button.o \
./src/util/SuperLoop.o 


# Each subdirectory must supply rules for building sources it contributes
src/util/%.o: ../src/util/%.cpp src/util/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src-2f-util

clean-src-2f-util:
	-$(RM) ./src/util/Button.d ./src/util/Button.o ./src/util/SuperLoop.d ./src/util/SuperLoop.o

.PHONY: clean-src-2f-util


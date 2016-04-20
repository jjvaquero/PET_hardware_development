################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../C12137detector.cpp \
../main.cpp 

OBJS += \
./C12137detector.o \
./main.o 

CPP_DEPS += \
./C12137detector.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O3 -Wall -c -lusb-1.0  -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"main.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



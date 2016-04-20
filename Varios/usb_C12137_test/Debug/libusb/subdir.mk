################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../libusb/libusb_1_0_la-core.o \
../libusb/libusb_1_0_la-descriptor.o \
../libusb/libusb_1_0_la-io.o \
../libusb/libusb_1_0_la-linux_usbfs.o \
../libusb/libusb_1_0_la-sync.o \
../libusb/libusb_1_0_la-threads_posix.o 

C_SRCS += \
../libusb/core.c \
../libusb/descriptor.c \
../libusb/io.c \
../libusb/sync.c 

OBJS += \
./libusb/core.o \
./libusb/descriptor.o \
./libusb/io.o \
./libusb/sync.o 

C_DEPS += \
./libusb/core.d \
./libusb/descriptor.d \
./libusb/io.d \
./libusb/sync.d 


# Each subdirectory must supply rules for building sources it contributes
libusb/%.o: ../libusb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



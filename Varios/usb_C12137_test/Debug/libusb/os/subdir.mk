################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libusb/os/darwin_usb.c \
../libusb/os/linux_usbfs.c \
../libusb/os/openbsd_usb.c \
../libusb/os/poll_windows.c \
../libusb/os/threads_posix.c \
../libusb/os/threads_windows.c \
../libusb/os/windows_usb.c 

OBJS += \
./libusb/os/darwin_usb.o \
./libusb/os/linux_usbfs.o \
./libusb/os/openbsd_usb.o \
./libusb/os/poll_windows.o \
./libusb/os/threads_posix.o \
./libusb/os/threads_windows.o \
./libusb/os/windows_usb.o 

C_DEPS += \
./libusb/os/darwin_usb.d \
./libusb/os/linux_usbfs.d \
./libusb/os/openbsd_usb.d \
./libusb/os/poll_windows.d \
./libusb/os/threads_posix.d \
./libusb/os/threads_windows.d \
./libusb/os/windows_usb.d 


# Each subdirectory must supply rules for building sources it contributes
libusb/os/%.o: ../libusb/os/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



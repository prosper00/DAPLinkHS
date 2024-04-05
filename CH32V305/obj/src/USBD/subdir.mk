################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/USBD/ch32v30x_usbhs_device.c \
../src/USBD/usb_desc.c 

OBJS += \
./src/USBD/ch32v30x_usbhs_device.o \
./src/USBD/usb_desc.o 

C_DEPS += \
./src/USBD/ch32v30x_usbhs_device.d \
./src/USBD/usb_desc.d 


# Each subdirectory must supply rules for building sources it contributes
src/USBD/%.o: ../src/USBD/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -DDAP_FW_V1 -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Peripheral" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Startup" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/USBD" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/SWD_host" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



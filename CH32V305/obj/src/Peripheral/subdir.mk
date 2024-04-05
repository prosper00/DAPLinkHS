################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Peripheral/ch32v30x_adc.c \
../src/Peripheral/ch32v30x_bkp.c \
../src/Peripheral/ch32v30x_can.c \
../src/Peripheral/ch32v30x_crc.c \
../src/Peripheral/ch32v30x_dac.c \
../src/Peripheral/ch32v30x_dbgmcu.c \
../src/Peripheral/ch32v30x_dma.c \
../src/Peripheral/ch32v30x_dvp.c \
../src/Peripheral/ch32v30x_eth.c \
../src/Peripheral/ch32v30x_exti.c \
../src/Peripheral/ch32v30x_flash.c \
../src/Peripheral/ch32v30x_fsmc.c \
../src/Peripheral/ch32v30x_gpio.c \
../src/Peripheral/ch32v30x_i2c.c \
../src/Peripheral/ch32v30x_iwdg.c \
../src/Peripheral/ch32v30x_misc.c \
../src/Peripheral/ch32v30x_opa.c \
../src/Peripheral/ch32v30x_pwr.c \
../src/Peripheral/ch32v30x_rcc.c \
../src/Peripheral/ch32v30x_rng.c \
../src/Peripheral/ch32v30x_rtc.c \
../src/Peripheral/ch32v30x_sdio.c \
../src/Peripheral/ch32v30x_spi.c \
../src/Peripheral/ch32v30x_tim.c \
../src/Peripheral/ch32v30x_usart.c \
../src/Peripheral/ch32v30x_wwdg.c 

OBJS += \
./src/Peripheral/ch32v30x_adc.o \
./src/Peripheral/ch32v30x_bkp.o \
./src/Peripheral/ch32v30x_can.o \
./src/Peripheral/ch32v30x_crc.o \
./src/Peripheral/ch32v30x_dac.o \
./src/Peripheral/ch32v30x_dbgmcu.o \
./src/Peripheral/ch32v30x_dma.o \
./src/Peripheral/ch32v30x_dvp.o \
./src/Peripheral/ch32v30x_eth.o \
./src/Peripheral/ch32v30x_exti.o \
./src/Peripheral/ch32v30x_flash.o \
./src/Peripheral/ch32v30x_fsmc.o \
./src/Peripheral/ch32v30x_gpio.o \
./src/Peripheral/ch32v30x_i2c.o \
./src/Peripheral/ch32v30x_iwdg.o \
./src/Peripheral/ch32v30x_misc.o \
./src/Peripheral/ch32v30x_opa.o \
./src/Peripheral/ch32v30x_pwr.o \
./src/Peripheral/ch32v30x_rcc.o \
./src/Peripheral/ch32v30x_rng.o \
./src/Peripheral/ch32v30x_rtc.o \
./src/Peripheral/ch32v30x_sdio.o \
./src/Peripheral/ch32v30x_spi.o \
./src/Peripheral/ch32v30x_tim.o \
./src/Peripheral/ch32v30x_usart.o \
./src/Peripheral/ch32v30x_wwdg.o 

C_DEPS += \
./src/Peripheral/ch32v30x_adc.d \
./src/Peripheral/ch32v30x_bkp.d \
./src/Peripheral/ch32v30x_can.d \
./src/Peripheral/ch32v30x_crc.d \
./src/Peripheral/ch32v30x_dac.d \
./src/Peripheral/ch32v30x_dbgmcu.d \
./src/Peripheral/ch32v30x_dma.d \
./src/Peripheral/ch32v30x_dvp.d \
./src/Peripheral/ch32v30x_eth.d \
./src/Peripheral/ch32v30x_exti.d \
./src/Peripheral/ch32v30x_flash.d \
./src/Peripheral/ch32v30x_fsmc.d \
./src/Peripheral/ch32v30x_gpio.d \
./src/Peripheral/ch32v30x_i2c.d \
./src/Peripheral/ch32v30x_iwdg.d \
./src/Peripheral/ch32v30x_misc.d \
./src/Peripheral/ch32v30x_opa.d \
./src/Peripheral/ch32v30x_pwr.d \
./src/Peripheral/ch32v30x_rcc.d \
./src/Peripheral/ch32v30x_rng.d \
./src/Peripheral/ch32v30x_rtc.d \
./src/Peripheral/ch32v30x_sdio.d \
./src/Peripheral/ch32v30x_spi.d \
./src/Peripheral/ch32v30x_tim.d \
./src/Peripheral/ch32v30x_usart.d \
./src/Peripheral/ch32v30x_wwdg.d 


# Each subdirectory must supply rules for building sources it contributes
src/Peripheral/%.o: ../src/Peripheral/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -DDAP_FW_V1 -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Peripheral" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Startup" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/USBD" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/SWD_host" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



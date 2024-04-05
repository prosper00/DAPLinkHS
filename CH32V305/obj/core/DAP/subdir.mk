################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/DAP.c \
/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/JTAG_DP.c \
/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/SWO.c \
/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/SW_DP.c 

OBJS += \
./core/DAP/DAP.o \
./core/DAP/JTAG_DP.o \
./core/DAP/SWO.o \
./core/DAP/SW_DP.o 

C_DEPS += \
./core/DAP/DAP.d \
./core/DAP/JTAG_DP.d \
./core/DAP/SWO.d \
./core/DAP/SW_DP.d 


# Each subdirectory must supply rules for building sources it contributes
core/DAP/DAP.o: /home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/DAP.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -DDAP_FW_V1 -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Peripheral" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Startup" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/USBD" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/SWD_host" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/DAP/JTAG_DP.o: /home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/JTAG_DP.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -DDAP_FW_V1 -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Peripheral" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Startup" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/USBD" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/SWD_host" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/DAP/SWO.o: /home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/SWO.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -DDAP_FW_V1 -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Peripheral" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Startup" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/USBD" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/SWD_host" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

core/DAP/SW_DP.o: /home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP/SW_DP.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -DDAP_FW_V1 -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Peripheral" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/Startup" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src/USBD" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/src" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/DAP" -I"/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/core/SWD_host" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



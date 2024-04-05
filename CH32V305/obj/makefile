################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/USBD/subdir.mk
-include src/Startup/subdir.mk
-include src/Peripheral/subdir.mk
-include src/subdir.mk
-include core/SWD_host/subdir.mk
-include core/DAP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
DAPLink.hex \

SECONDARY_LIST += \
DAPLink.lst \

SECONDARY_SIZE += \
DAPLink.siz \


# All Target
all: DAPLink.elf secondary-outputs

# Tool invocations
DAPLink.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C Linker'
	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O1 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wuninitialized  -g -T "/home/bdroy/Embedded/ch32v-base/daplink-hs-ch32v305fbp6/CH32V305/link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"DAPLink.map" --specs=nano.specs --specs=nosys.specs -o "DAPLink.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

DAPLink.hex: DAPLink.elf
	@echo 'Invoking: GNU RISC-V Cross Create Flash Image'
	riscv-none-embed-objcopy -O ihex "DAPLink.elf"  "DAPLink.hex"
	@echo 'Finished building: $@'
	@echo ' '

DAPLink.lst: DAPLink.elf
	@echo 'Invoking: GNU RISC-V Cross Create Listing'
	riscv-none-embed-objdump --all-headers --demangle --disassemble "DAPLink.elf" > "DAPLink.lst"
	@echo 'Finished building: $@'
	@echo ' '

DAPLink.siz: DAPLink.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv-none-embed-size --format=berkeley "DAPLink.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) DAPLink.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets

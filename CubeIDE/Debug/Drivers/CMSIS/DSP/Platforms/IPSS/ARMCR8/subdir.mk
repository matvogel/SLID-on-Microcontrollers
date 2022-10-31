################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/mmu_ARMCR8.c \
../Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/system_ARMCR8.c 

OBJS += \
./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/mmu_ARMCR8.o \
./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/system_ARMCR8.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/mmu_ARMCR8.d \
./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/system_ARMCR8.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/%.o: ../Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/%.c Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DARM_MATH_M4 -DDEBUG -DSTM32L475xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/DSP/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-IPSS-2f-ARMCR8

clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-IPSS-2f-ARMCR8:
	-$(RM) ./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/mmu_ARMCR8.d ./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/mmu_ARMCR8.o ./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/system_ARMCR8.d ./Drivers/CMSIS/DSP/Platforms/IPSS/ARMCR8/system_ARMCR8.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-IPSS-2f-ARMCR8


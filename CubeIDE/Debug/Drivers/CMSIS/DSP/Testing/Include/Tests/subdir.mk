################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Testing/Include/Tests/mfccdata.c 

OBJS += \
./Drivers/CMSIS/DSP/Testing/Include/Tests/mfccdata.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Testing/Include/Tests/mfccdata.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Testing/Include/Tests/%.o: ../Drivers/CMSIS/DSP/Testing/Include/Tests/%.c Drivers/CMSIS/DSP/Testing/Include/Tests/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DARM_MATH_M4 -DDEBUG -DSTM32L475xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/DSP/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Testing-2f-Include-2f-Tests

clean-Drivers-2f-CMSIS-2f-DSP-2f-Testing-2f-Include-2f-Tests:
	-$(RM) ./Drivers/CMSIS/DSP/Testing/Include/Tests/mfccdata.d ./Drivers/CMSIS/DSP/Testing/Include/Tests/mfccdata.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Testing-2f-Include-2f-Tests


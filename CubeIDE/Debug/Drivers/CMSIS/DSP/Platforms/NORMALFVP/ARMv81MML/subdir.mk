################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/system_ARMv81MML.c 

OBJS += \
./Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/system_ARMv81MML.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/system_ARMv81MML.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/%.o: ../Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/%.c Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DARM_MATH_M4 -DDEBUG -DSTM32L475xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/DSP/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-NORMALFVP-2f-ARMv81MML

clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-NORMALFVP-2f-ARMv81MML:
	-$(RM) ./Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/system_ARMv81MML.d ./Drivers/CMSIS/DSP/Platforms/NORMALFVP/ARMv81MML/system_ARMv81MML.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-NORMALFVP-2f-ARMv81MML


################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/startup_ARMCM33.s 

OBJS += \
./Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/startup_ARMCM33.o 

S_DEPS += \
./Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/startup_ARMCM33.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/%.o: ../Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/%.s Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-MPS3-2f-ARMCM33-2f-Startup-2f-AC6

clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-MPS3-2f-ARMCM33-2f-Startup-2f-AC6:
	-$(RM) ./Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/startup_ARMCM33.d ./Drivers/CMSIS/DSP/Platforms/MPS3/ARMCM33/Startup/AC6/startup_ARMCM33.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Platforms-2f-MPS3-2f-ARMCM33-2f-Startup-2f-AC6


################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/audio_drv.c 

OBJS += \
./Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/audio_drv.o 

C_DEPS += \
./Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/audio_drv.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/%.o: ../Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/%.c Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DARM_MATH_M4 -DDEBUG -DSTM32L475xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/DSP/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-SDFTools-2f-sdf-2f-nodes-2f-cpp-2f-StreamingNodes-2f-VHT-2f-audio

clean-Drivers-2f-CMSIS-2f-DSP-2f-SDFTools-2f-sdf-2f-nodes-2f-cpp-2f-StreamingNodes-2f-VHT-2f-audio:
	-$(RM) ./Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/audio_drv.d ./Drivers/CMSIS/DSP/SDFTools/sdf/nodes/cpp/StreamingNodes/VHT/audio/audio_drv.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-SDFTools-2f-sdf-2f-nodes-2f-cpp-2f-StreamingNodes-2f-VHT-2f-audio


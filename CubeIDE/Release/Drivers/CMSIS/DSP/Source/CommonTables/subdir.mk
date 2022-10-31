################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/CommonTables/%.o: ../Drivers/CMSIS/DSP/Source/CommonTables/%.c Drivers/CMSIS/DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L475xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.d ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables


################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c \
../Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.d \
./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/SupportFunctions/%.o: ../Drivers/CMSIS/DSP/Source/SupportFunctions/%.c Drivers/CMSIS/DSP/Source/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L475xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-SupportFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-SupportFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/SupportFunctionsF16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.d ./Drivers/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-SupportFunctions


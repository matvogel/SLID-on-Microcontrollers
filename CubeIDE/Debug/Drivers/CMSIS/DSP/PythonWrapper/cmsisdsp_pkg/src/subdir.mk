################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.c \
../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.c 

OBJS += \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.o \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.o 

C_DEPS += \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.d \
./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/%.o: ../Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/%.c Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DARM_MATH_M4 -DDEBUG -DSTM32L475xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/DSP/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src

clean-Drivers-2f-CMSIS-2f-DSP-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src:
	-$(RM) ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_basic.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_bayes.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_complexf.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_controller.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_distance.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_fastmath.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_filtering.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_interpolation.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_matrix.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_quaternion.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_statistics.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_support.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_svm.o ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.d ./Drivers/CMSIS/DSP/PythonWrapper/cmsisdsp_pkg/src/cmsisdsp_transform.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-PythonWrapper-2f-cmsisdsp_pkg-2f-src


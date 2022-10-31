################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/SVMFunctions/%.o: ../Drivers/CMSIS/DSP/Source/SVMFunctions/%.c Drivers/CMSIS/DSP/Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32L475xx -DDEBUG -c -I../Drivers/CMSIS/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/Include/dsp" -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-SVMFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-SVMFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/SVMFunctionsF16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./Drivers/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-SVMFunctions


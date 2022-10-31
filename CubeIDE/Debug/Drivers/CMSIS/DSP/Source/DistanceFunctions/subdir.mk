################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c \
../Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d \
./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/DistanceFunctions/%.o: ../Drivers/CMSIS/DSP/Source/DistanceFunctions/%.c Drivers/CMSIS/DSP/Source/DistanceFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DARM_MATH_M4 -DDEBUG -DSTM32L475xx -c -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/DSP/Include -I../Core/Inc -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I"C:/Users/fphal/Desktop/ML4UC/STM32_languages/Drivers/CMSIS/DSP/PrivateInclude" -I../X-CUBE-AI/App -I../X-CUBE-AI -I../Middlewares/ST/AI/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/DistanceFunctionsF16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d ./Drivers/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-DistanceFunctions


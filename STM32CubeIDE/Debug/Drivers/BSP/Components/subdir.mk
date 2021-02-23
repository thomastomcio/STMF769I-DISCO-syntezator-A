################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/ft6x06/ft6x06.c \
C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/otm8009a/otm8009a.c \
C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/wm8994/wm8994.c 

C_DEPS += \
./Drivers/BSP/Components/ft6x06.d \
./Drivers/BSP/Components/otm8009a.d \
./Drivers/BSP/Components/wm8994.d 

OBJS += \
./Drivers/BSP/Components/ft6x06.o \
./Drivers/BSP/Components/otm8009a.o \
./Drivers/BSP/Components/wm8994.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/ft6x06.o: C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/ft6x06/ft6x06.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F769xx -DDEBUG -c -I../../Core/Inc -I"C:/TouchGFXProjects/syntezator/Drivers/BSP/STM32F769I-Discovery" -I"C:/Users/thomas/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Drivers/BSP/Components/wm8994" -I"C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/wm8994" -I../../Drivers/CMSIS/Include -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/ST/touchgfx/framework/include -I../../TouchGFX/generated/fonts/include -I../../TouchGFX/generated/gui_generated/include -I../../TouchGFX/generated/images/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/gui/include -I"C:/Users/thomas/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Drivers/BSP/Components/Common" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/ft6x06.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/otm8009a.o: C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/otm8009a/otm8009a.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F769xx -DDEBUG -c -I../../Core/Inc -I"C:/TouchGFXProjects/syntezator/Drivers/BSP/STM32F769I-Discovery" -I"C:/Users/thomas/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Drivers/BSP/Components/wm8994" -I"C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/wm8994" -I../../Drivers/CMSIS/Include -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/ST/touchgfx/framework/include -I../../TouchGFX/generated/fonts/include -I../../TouchGFX/generated/gui_generated/include -I../../TouchGFX/generated/images/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/gui/include -I"C:/Users/thomas/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Drivers/BSP/Components/Common" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/otm8009a.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/wm8994.o: C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/wm8994/wm8994.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F769xx -DDEBUG -c -I../../Core/Inc -I"C:/TouchGFXProjects/syntezator/Drivers/BSP/STM32F769I-Discovery" -I"C:/Users/thomas/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Drivers/BSP/Components/wm8994" -I"C:/TouchGFXProjects/syntezator/Drivers/BSP/Components/wm8994" -I../../Drivers/CMSIS/Include -I../../TouchGFX/target -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../TouchGFX/App -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../TouchGFX/target/generated -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I../../Drivers/BSP/Components/Common -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/ST/touchgfx/framework/include -I../../TouchGFX/generated/fonts/include -I../../TouchGFX/generated/gui_generated/include -I../../TouchGFX/generated/images/include -I../../TouchGFX/generated/texts/include -I../../TouchGFX/gui/include -I"C:/Users/thomas/STM32Cube/Repository/STM32Cube_FW_F7_V1.16.0/Drivers/BSP/Components/Common" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/wm8994.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"


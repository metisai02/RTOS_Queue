################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/handle_task.c \
../Src/main.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_hal_timebase_tim.c \
../Src/stm32f4xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32f4xx.c 

OBJS += \
./Src/handle_task.o \
./Src/main.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_hal_timebase_tim.o \
./Src/stm32f4xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32f4xx.o 

C_DEPS += \
./Src/handle_task.d \
./Src/main.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_hal_timebase_tim.d \
./Src/stm32f4xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/handle_task.o: ../Src/handle_task.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/handle_task.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/main.o: ../Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f4xx_hal_msp.o: ../Src/stm32f4xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f4xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f4xx_hal_timebase_tim.o: ../Src/stm32f4xx_hal_timebase_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f4xx_hal_timebase_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f4xx_it.o: ../Src/stm32f4xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/syscalls.o: ../Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/sysmem.o: ../Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/system_stm32f4xx.o: ../Src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -c -I../Inc -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/include" -I"C:/Users/DELL/Desktop/Study_FreeRTOS/Workspace/RTOS_workspace/F4_QueueUart/ThirdParty/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"


/*
 * handle_task.c
 *
 *  Created on: Feb 20, 2023
 *      Author: DELL
 */

#include "main.h"

extern UART_HandleTypeDef uart;


#define size 50
extern uint8_t data_byte1;
extern uint8_t data_byte6;
void print_task(void *param)
{

    UBaseType_t free_spaces;
    uint8_t arr[10];
    uint8_t msg[50];

    while (1)
    {
        if (xQueueReceive(queue_print, &msg, portMAX_DELAY) == pdPASS)
        {
            free_spaces = uxQueueSpacesAvailable(queue_print);
            if (free_spaces == 0)
                xSemaphoreGive(xsemaphore_led);
            sprintf((char *)arr, "Left: %u\n", (unsigned int)free_spaces);
            HAL_UART_Transmit(&huart2, arr, 10, 1000);
            HAL_UART_Transmit(&huart2, msg, 50, HAL_MAX_DELAY);
            memset(msg, 0, sizeof(msg));
            memset(arr, 0, sizeof(arr));

            // HAL_UART_Receive_IT(&huart6, &data_byte6, 1);
        }
    }
}
void led_task(void *param)
{

    while (1)
    {
        if (xSemaphoreTake(xsemaphore_led, portMAX_DELAY) == pdPASS)
        {
            uint32_t count = HAL_GetTick();
            while (HAL_GetTick() - count < 10000)
            {
                HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
                vTaskDelay(100);
            }
        }
    }
}
void toggle_led(void *param)
{
    while (1)
    {
        HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
        vTaskDelay(100);
    }
}
void receive_uart1(void *param)
{
    uint8_t data1[size];
    memset(data1, 0, sizeof(data1));
    uint32_t count_size1 = 0;
    while (1)
    {
        if (xSemaphoreTake(xsemaphore_uart1, portMAX_DELAY) == pdPASS)
        {
            if (count_size1 < 49)
            {
                data1[count_size1] = data_byte1;
                count_size1++;

                if (data_byte1 == '\n')
                {
                    data1[count_size1] = '\0';
                    xQueueSend(queue_print, data1, portMAX_DELAY);
                    count_size1 = 0;
                    memset(data1, 0, sizeof(data1));
                }
            }
            else
            {
                count_size1 = 0;
            }

            HAL_UART_Receive_IT(&huart1, &data_byte1, 1);
        }
    }
}
void receive_uart6(void *param)
{
    uint8_t data6[size];
    memset(data6, 0, sizeof(data6));
    uint32_t count_size6 = 0;
    while (1)
    {
        if (xSemaphoreTake(xsemaphore_uart6, portMAX_DELAY) == pdPASS)
        {
            if (count_size6 < 49)
            {
                data6[count_size6] = data_byte6;
                count_size6++;

                if (data_byte6 == '\n')
                {
                    data6[count_size6] = '\0';
                    xQueueSend(queue_print, data6, portMAX_DELAY);
                    count_size6 = 0;
                    memset(data6, 0, sizeof(data6));
                }
            }
            else
            {
                count_size6 = 0;
            }

            HAL_UART_Receive_IT(&huart6, &data_byte6, 1);
        }
    }
}

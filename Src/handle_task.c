/*
 * handle_task.c
 *
 *  Created on: Feb 20, 2023
 *      Author: DELL
 */

#include "main.h"
extern UART_HandleTypeDef huart2;
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart6;
extern UART_HandleTypeDef uart;

#define size 50
extern uint8_t data_byte1;	
extern uint8_t data_byte6;
void print_task(void *param)
{

	UBaseType_t free_spaces;
	uint8_t arr[10];
	uint8_t msg[50];
	//	xSemaphoreTake(xSemaphore, portMAX_DELAY);
	while (1)
	{
		if (xQueueReceive(queue_print, &msg, portMAX_DELAY) == pdPASS)
		{
			free_spaces = uxQueueSpacesAvailable(queue_print);
			if (free_spaces == 0)
				xSemaphoreGive(xSemaphore);
			sprintf((char *)arr, "Left: %u\n", (unsigned int)free_spaces);
			HAL_UART_Transmit(&huart2, arr, 10, 1000);
			HAL_UART_Transmit(&huart2, msg, 50, HAL_MAX_DELAY);
			memset(msg, 0, sizeof(msg));
			memset(arr, 0, sizeof(arr));
			vTaskDelay(1);
		}
	}
}
void led_task(void *param)
{

	while (1)
	{
		xSemaphoreTake(xSemaphore, portMAX_DELAY);
		uint32_t count = HAL_GetTick();
		while (HAL_GetTick() - count < 10000)
		{
			HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
			vTaskDelay(100);	
		}
	}
}
void receive_task(void *param)
{

	uint8_t data1[size];
	uint8_t data6[size];

	uint32_t count_size6 = 0;
	uint32_t count_size1 = 0;
	while (1)
	{
		xSemaphoreTake(xsemaphoreIT, portMAX_DELAY);
		if (uart.Instance == USART1)
		{
			if (count_size1 < 100)
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

			HAL_UART_Receive_IT(&huart1, &data_byte1, 1);
		}
		else if (uart.Instance == USART6)
		{

			if (count_size6 < 100)
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

			HAL_UART_Receive_IT(&huart6, &data_byte6, 1);
		}
	}
}

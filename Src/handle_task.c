/*
 * handle_task.c
 *
 *  Created on: Feb 20, 2023
 *      Author: DELL
 */

#include "main.h"
extern UART_HandleTypeDef huart2;
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
			sprintf((char *)arr, "Left: %u\n", (unsigned int)free_spaces);
			HAL_UART_Transmit(&huart2, arr, 10, 1000);

			HAL_UART_Transmit(&huart2, msg, 50, HAL_MAX_DELAY);

		}
	}
}

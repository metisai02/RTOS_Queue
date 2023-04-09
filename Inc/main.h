/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.h
 * @brief          : Header for main.c file.
 *                   This file contains the common defines of the application.
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2023 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C"
{
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "semphr.h"
  /* USER CODE END Includes */

  /* Exported types ------------------------------------------------------------*/
  /* USER CODE BEGIN ET */
  extern UART_HandleTypeDef huart2;
  extern UART_HandleTypeDef huart1;
  extern UART_HandleTypeDef huart6;

  extern xTaskHandle handle_print_task;
  extern xTaskHandle handle_led_task;
  extern xTaskHandle handle_receive_uart1;
  extern xTaskHandle handle_receive_uart6;
  extern xTaskHandle toggleled;

  extern QueueHandle_t queue_print;
  extern SemaphoreHandle_t xsemaphore_led;
  extern SemaphoreHandle_t xsemaphore_uart1;
  extern SemaphoreHandle_t xsemaphore_uart6;

  extern UART_HandleTypeDef huart2;
  /* USER CODE END ET */

  /* Exported constants --------------------------------------------------------*/
  /* USER CODE BEGIN EC */

  /* USER CODE END EC */

  /* Exported macro ------------------------------------------------------------*/
  /* USER CODE BEGIN EM */

  /* USER CODE END EM */

  /* Exported functions prototypes ---------------------------------------------*/
  void Error_Handler(void);

  /* USER CODE BEGIN EFP */
  void print_task(void *param);
  void led_task(void *param);
  void receive_uart1(void *param);
  void receive_uart6(void *param);
  void toggle_led(void *param);
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED1_Pin GPIO_PIN_14
#define LED1_GPIO_Port GPIOD
#define LED_Pin GPIO_PIN_15
#define LED_GPIO_Port GPIOD
  /* USER CODE BEGIN Private defines */

  /* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

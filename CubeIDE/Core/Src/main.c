/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "app_x-cube-ai.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
CRC_HandleTypeDef hcrc;

DFSDM_Filter_HandleTypeDef hdfsdm1_filter0;
DFSDM_Channel_HandleTypeDef hdfsdm1_channel2;
DMA_HandleTypeDef hdma_dfsdm1_flt0;

USART_HandleTypeDef husart1;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_DFSDM1_Init(void);
static void MX_USART1_Init(void);
static void MX_CRC_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

volatile bool firstHalfFull = false;
volatile bool secondHalfFull = false;

int32_t RecBuff[FFT_LENGTH];
q15_t MfccData[FFT_LENGTH];
q31_t TempBuffer[2 * FFT_LENGTH];
q15_t Mfcc[NB_MFCC * NB_DCT_OUTPUTS];
arm_mfcc_instance_q15 mfcc_config;

#ifdef __GNUC__
/* With GCC/RAISONANCE, small msg_info (option LD Linker->Libraries->Small msg_info
 set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#define GETCHAR_PROTOTYPE int __io_getchar(void)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#define GETCHAR_PROTOTYPE int fgetc(FILE *f)
#endif /* __GNUC__ */

PUTCHAR_PROTOTYPE {
	/* Place your implementation of fputc here */
	/* e.g. write a character to the serial port and Loop until the end of transmission */
	while (HAL_OK != HAL_USART_Transmit(&husart1, (uint8_t*) &ch, 1, 30000)) {
		;
	}
	return ch;
}

/**
 * @brief Retargets the C library scanf function to the USART.
 * @param None
 * @retval None
 */
GETCHAR_PROTOTYPE {
	/* Place your implementation of fgetc here */
	/* e.g. readwrite a character to the USART2 and Loop until the end of transmission */
	uint8_t ch = 0;
	while (HAL_OK != HAL_USART_Receive(&husart1, (uint8_t*) &ch, 1, 30000)) {
		;
	}
	return ch;
}

void HAL_DFSDM_FilterRegConvCpltCallback(
		DFSDM_Filter_HandleTypeDef *hdfsdm_filter) {
	secondHalfFull = true;
}

void HAL_DFSDM_FilterRegConvHalfCpltCallback(
		DFSDM_Filter_HandleTypeDef *hdfsdm_filter) {
	firstHalfFull = true;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	arm_mfcc_init_q15(&mfcc_config, FFT_LENGTH, NB_MFCC_NB_FILTER_Q15,
	NB_DCT_OUTPUTS, mfcc_dct_coefs, mfcc_filter_pos, mfcc_filter_len,
			mfcc_filter_coefs, mfcc_window_coefs);
	//q15_t pSrc[];
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_DFSDM1_Init();
  MX_USART1_Init();
  MX_CRC_Init();
  MX_X_CUBE_AI_Init();
  /* USER CODE BEGIN 2 */
	if (HAL_OK != HAL_DFSDM_FilterRegularStart_DMA(&hdfsdm1_filter0, RecBuff, FFT_LENGTH)) {
		Error_Handler();
	}
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1) {
    /* USER CODE END WHILE */

  MX_X_CUBE_AI_Process();
    /* USER CODE BEGIN 3 */
		//MFCC Calc
		/*firstHalfFull = false;
		 secondHalfFull = false;
		 uint16_t cur_nb_mfcc = 0;
		 while (cur_nb_mfcc < NB_MFCC) {
		 if (firstHalfFull) {
		 for (int i = 0; i < FFT_LENGTH; i++) {
		 MfccData[i] = (q15_t) (RecBuff[i] >> 8);
		 }
		 arm_mfcc_q15(&mfcc_config, MfccData,
		 &Mfcc[cur_nb_mfcc * NB_DCT_OUTPUTS], TempBuffer);
		 cur_nb_mfcc++;
		 firstHalfFull = false;
		 }
		 if (secondHalfFull) {
		 for (int i = FFT_LENGTH; i < 2 * FFT_LENGTH; i++) {
		 MfccData[i - FFT_LENGTH] = (q15_t) (RecBuff[i] >> 8);
		 }
		 arm_mfcc_q15(&mfcc_config, MfccData,
		 &Mfcc[cur_nb_mfcc * NB_DCT_OUTPUTS], TempBuffer);
		 cur_nb_mfcc++;
		 secondHalfFull = false;
		 }
		 }*/
		// NN
		//MX_X_CUBE_AI_Process();
		HAL_Delay(1000);

	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 40;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief CRC Initialization Function
  * @param None
  * @retval None
  */
static void MX_CRC_Init(void)
{

  /* USER CODE BEGIN CRC_Init 0 */

  /* USER CODE END CRC_Init 0 */

  /* USER CODE BEGIN CRC_Init 1 */

  /* USER CODE END CRC_Init 1 */
  hcrc.Instance = CRC;
  hcrc.Init.DefaultPolynomialUse = DEFAULT_POLYNOMIAL_ENABLE;
  hcrc.Init.DefaultInitValueUse = DEFAULT_INIT_VALUE_ENABLE;
  hcrc.Init.InputDataInversionMode = CRC_INPUTDATA_INVERSION_NONE;
  hcrc.Init.OutputDataInversionMode = CRC_OUTPUTDATA_INVERSION_DISABLE;
  hcrc.InputDataFormat = CRC_INPUTDATA_FORMAT_BYTES;
  if (HAL_CRC_Init(&hcrc) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CRC_Init 2 */

  /* USER CODE END CRC_Init 2 */

}

/**
  * @brief DFSDM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_DFSDM1_Init(void)
{

  /* USER CODE BEGIN DFSDM1_Init 0 */

  /* USER CODE END DFSDM1_Init 0 */

  /* USER CODE BEGIN DFSDM1_Init 1 */

  /* USER CODE END DFSDM1_Init 1 */
  hdfsdm1_filter0.Instance = DFSDM1_Filter0;
  hdfsdm1_filter0.Init.RegularParam.Trigger = DFSDM_FILTER_SW_TRIGGER;
  hdfsdm1_filter0.Init.RegularParam.FastMode = ENABLE;
  hdfsdm1_filter0.Init.RegularParam.DmaMode = ENABLE;
  hdfsdm1_filter0.Init.FilterParam.SincOrder = DFSDM_FILTER_SINC3_ORDER;
  hdfsdm1_filter0.Init.FilterParam.Oversampling = 32;
  hdfsdm1_filter0.Init.FilterParam.IntOversampling = 4;
  if (HAL_DFSDM_FilterInit(&hdfsdm1_filter0) != HAL_OK)
  {
    Error_Handler();
  }
  hdfsdm1_channel2.Instance = DFSDM1_Channel2;
  hdfsdm1_channel2.Init.OutputClock.Activation = ENABLE;
  hdfsdm1_channel2.Init.OutputClock.Selection = DFSDM_CHANNEL_OUTPUT_CLOCK_SYSTEM;
  hdfsdm1_channel2.Init.OutputClock.Divider = 38;
  hdfsdm1_channel2.Init.Input.Multiplexer = DFSDM_CHANNEL_EXTERNAL_INPUTS;
  hdfsdm1_channel2.Init.Input.DataPacking = DFSDM_CHANNEL_STANDARD_MODE;
  hdfsdm1_channel2.Init.Input.Pins = DFSDM_CHANNEL_SAME_CHANNEL_PINS;
  hdfsdm1_channel2.Init.SerialInterface.Type = DFSDM_CHANNEL_SPI_RISING;
  hdfsdm1_channel2.Init.SerialInterface.SpiClock = DFSDM_CHANNEL_SPI_CLOCK_INTERNAL;
  hdfsdm1_channel2.Init.Awd.FilterOrder = DFSDM_CHANNEL_FASTSINC_ORDER;
  hdfsdm1_channel2.Init.Awd.Oversampling = 1;
  hdfsdm1_channel2.Init.Offset = 0;
  hdfsdm1_channel2.Init.RightBitShift = 0x00;
  if (HAL_DFSDM_ChannelInit(&hdfsdm1_channel2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_DFSDM_FilterConfigRegChannel(&hdfsdm1_filter0, DFSDM_CHANNEL_2, DFSDM_CONTINUOUS_CONV_ON) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DFSDM1_Init 2 */

  /* USER CODE END DFSDM1_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  husart1.Instance = USART1;
  husart1.Init.BaudRate = 115200;
  husart1.Init.WordLength = USART_WORDLENGTH_8B;
  husart1.Init.StopBits = USART_STOPBITS_1;
  husart1.Init.Parity = USART_PARITY_NONE;
  husart1.Init.Mode = USART_MODE_TX_RX;
  husart1.Init.CLKPolarity = USART_POLARITY_LOW;
  husart1.Init.CLKPhase = USART_PHASE_1EDGE;
  husart1.Init.CLKLastBit = USART_LASTBIT_DISABLE;
  if (HAL_USART_Init(&husart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel4_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel4_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel4_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : Button_Pin */
  GPIO_InitStruct.Pin = Button_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(Button_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LED_Pin */
  GPIO_InitStruct.Pin = LED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void set_data_ai_in(int8_t* input) {
	//MFCC Calc
	HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_RESET);
	while(HAL_GPIO_ReadPin(Button_GPIO_Port, Button_Pin) != GPIO_PIN_RESET);
	firstHalfFull = false;
	secondHalfFull = false;
	int16_t cur_nb_mfcc = -1;
	q15_t buffer[FFT_LENGTH/2];
	int32_t gain_numerator = 1000;
	int32_t gain_denominator = 1000;
	uint8_t led_count = 0;
	while (cur_nb_mfcc < NB_MFCC) {
		if (firstHalfFull) {
			for (uint16_t i = 0; i < FFT_LENGTH / 2; i++) {
				MfccData[i] = buffer[i];
			}
			for (uint16_t i = 0; i < FFT_LENGTH / 2; i++) {
				MfccData[i + FFT_LENGTH / 2] = (q15_t) ((RecBuff[i] >> 8)/**gain_numerator/gain_denominator
						- (int32_t) (((int32_t) MfccData[i - 1 + FFT_LENGTH / 2])
								* FILTER_CONST / 100)*/);
				buffer[i] = MfccData[i + FFT_LENGTH / 2];
				//gain_numerator += (TARGET_AMPLITUDE-abs(MfccData[i + FFT_LENGTH / 2]))/GAIN_DIVIDER;
			}
			firstHalfFull = false;
			if(cur_nb_mfcc==-1){
				cur_nb_mfcc++;
				continue;
			}
			arm_mfcc_q15(&mfcc_config, MfccData, &Mfcc[cur_nb_mfcc * NB_DCT_OUTPUTS], TempBuffer);
			cur_nb_mfcc++;
		}
		if (secondHalfFull) {
			for (uint16_t i = 0; i < FFT_LENGTH / 2; i++) {
				MfccData[i] = buffer[i];
			}
			for (uint16_t i = 0; i < FFT_LENGTH / 2; i++) {
				MfccData[i + FFT_LENGTH / 2] = (q15_t) ((RecBuff[i+ FFT_LENGTH / 2] >> 8)/**gain_numerator/gain_denominator
						- (int32_t) (((int32_t) MfccData[i - 1 + FFT_LENGTH / 2])
								* FILTER_CONST / 100)*/);
				buffer[i] = MfccData[i + FFT_LENGTH / 2];
				//gain_numerator += (TARGET_AMPLITUDE-abs(MfccData[i + FFT_LENGTH / 2]))/GAIN_DIVIDER;
			}
			secondHalfFull = false;
			if(cur_nb_mfcc==-1){
				cur_nb_mfcc++;
				continue;
			}
			arm_mfcc_q15(&mfcc_config, MfccData, &Mfcc[cur_nb_mfcc * NB_DCT_OUTPUTS], TempBuffer);
			cur_nb_mfcc++;

			if(led_count++%8==0){
				HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
			}
		}
	}
	int32_t max_value = INT32_MIN;
	int32_t min_value = INT32_MAX;
	for (uint16_t i = 0; i < NB_DCT_OUTPUTS * NB_MFCC; i++) {
		max_value = MAX(Mfcc[i], max_value);
		min_value = MIN(Mfcc[i], min_value);
	}

	/*for (uint16_t i = 0; i < NB_DCT_OUTPUTS * NB_MFCC; i++) {
		input[(i%NB_DCT_OUTPUTS)*NB_MFCC + i/NB_DCT_OUTPUTS] = (int8_t) ((UINT8_MAX*(int32_t)Mfcc[i]-127*min_value-128*max_value)/(max_value-min_value));
	}*/
	for (uint16_t i = 0; i < NB_DCT_OUTPUTS * NB_MFCC; i++) {
		input[i] = (int8_t) ((UINT8_MAX*(int32_t)Mfcc[i]-127*min_value-128*max_value)/(max_value-min_value));
	}
	HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_SET);
}

void get_data_ai_out(int8_t *data) {
	char str[30];
	uint16_t length;
	/*if(data[0] > data[1] && data[0] > data[2]){
		length = sprintf(str, "German: %f%%", data[0]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, " (English: %f%%, ", data[1]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, "Spanish: %f%%)\n", data[2]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
	}
	else if(data[1] > data[2]){
		length = sprintf(str, "English: %f%%", data[1]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, " (German: %f%%, ", data[0]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, "Spanish: %f%%)\n", data[2]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
	}
	else{
		length = sprintf(str, "Spanish: %f%%", data[2]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, " (German: %f%%, ", data[0]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, "English: %f%%)\n", data[1]);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
	}*/
	if(data[0] > data[1] && data[0] > data[2]){
		length = sprintf(str, "German: %f%%", ((float)data[0]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, " (English: %f%%, ", ((float)data[1]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, "Spanish: %f%%)\n", ((float)data[2]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
	}
	else if(data[1] > data[2]){
		length = sprintf(str, "English: %f%%", ((float)data[1]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, " (German: %f%%, ", ((float)data[0]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, "Spanish: %f%%)\n", ((float)data[2]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
	}
	else{
		length = sprintf(str, "Spanish: %f%%", ((float)data[2]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, " (German: %f%%, ", ((float)data[0]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
		length = sprintf(str, "English: %f%%)\n", ((float)data[1]+128)/2.55);
		HAL_USART_Transmit(&husart1, (uint8_t*)str, length, 30000);
	}
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */


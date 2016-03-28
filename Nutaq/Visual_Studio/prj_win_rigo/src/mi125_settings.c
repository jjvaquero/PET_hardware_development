/****************************************************************************
 *
 *    ****                              *                                    
 *   ******                            ***                                   
 *   *******                           ****                                  
 *   ********    ****  ****     **** *********    ******* ****    ***********
 *   *********   ****  ****     **** *********  **************  *************
 *   **** *****  ****  ****     ****   ****    *****    ****** *****     ****
 *   ****  ***** ****  ****     ****   ****   *****      ****  ****      ****
 *  ****    *********  ****     ****   ****   ****       ****  ****      ****
 *  ****     ********  ****    *****  ****    *****     *****  ****      ****
 *  ****      ******   ***** ******   *****    ****** *******  ****** *******
 *  ****        ****   ************    ******   *************   *************
 *  ****         ***     ****  ****     ****      *****  ****     *****  ****
 *                                                                       ****
 *          I N N O V A T I O N  T O D A Y  F O R  T O M O R R O W       ****
 *                                                                        ***
 *
 ************************************************************************//**
 *
 * @file      mi125_settings.c
 * 
 * @brief     mi1125 example board configuration definitions
 *
 * Copyright (C) 2014, Nutaq, Canada. All rights reserved.
 *
 * This file is part of Nutaq’s ADP Software Suite.
 *
 * You may at your option receive a license to Nutaq’s ADP Software Suite under 
 * either the terms of the GNU General Public License (GPL) or the 
 * Nutaq Professional License, as explained in the note below.
 *
 * Nutaq’s ADP Software Suite may be used under the terms of the GNU General 
 * Public License version 3 as published by the Free Software Foundation 
 * and appearing in the file LICENSE.GPL included in the packaging of this file.
 *
 * Nutaq’s ADP Software Suite is provided AS IS WITHOUT WARRANTY OF 
 * ANY KIND; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
 * PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * NOTE:
 *
 * Using Nutaq’s ADP Software Suite under the GPL requires that your work based on 
 * Nutaq’s ADP Software Suite, if  distributed, must be licensed under the GPL. 
 * If you wish to distribute a work based on Nutaq’s ADP Software Suite but desire 
 * to license it under your own terms, e.g. a closed source license, you may purchase 
 * a Nutaq Professional License.
 *
 * The Professional License, gives you -- under certain conditions -- the right to
 * use any license you wish for your work based on Nutaq’s ADP Software Suite. 
 * For the full terms of the Professional License, please contact the Nutaq sales team.
 *
 ****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#ifdef __linux__
#include <Nutaq/eapi.h>
#include <Nutaq/adp_types.h>
#include <Nutaq/adp_bus_access_media_types.h>
#include <Nutaq/adp_bus_access_types.h>
#include <Nutaq/adp_bus_access.h>
#include <Nutaq/eapi_mi125.h>
#include <Nutaq/mi125_settings.h>
#else
#include <conio.h>
#include "eapi.h"
#include "adp_types.h"
#include "adp_bus_access_media_types.h"
#include "adp_bus_access_types.h"
#include "adp_bus_access.h"
#include "eapi_mi125.h"
#include "mi125_settings.h"
#endif



/****************************************************************************************************************************
												Setup example configuration
****************************************************************************************************************************/

// Uncomment to display board temperature
#define DO_TEMP_DISPLAY 1

// Uncomment to display mi125 core/driver versions
#define DO_VERSIONS_DISPLAY 1

// Uncomment to do optionnal board configuration
#define DO_OPTIONNAL_CONFIG 1
#ifdef DO_OPTIONNAL_CONFIG
// Uncomment to do an extra adc calibration for test purpose
//#define DO_FORCE_CALIB 1

// Uncomment to do an i2c bus devices scan test (for diagnostic purpose)
//#define DO_I2CSCAN 1

// Uncomment to do a local oscillator switch test (for diagnostic purpose)
//#define DO_LOCALOSC_SW_TEST 1

// Uncomment to do adc capture simulation by using a user defined output data pattern (for diagnostic purpose)
//#define DO_ADC_SIMULATION 1

// Uncomment to do adc test: this verifies we can talk with each ADC device correctly (for diagnostic purpose)
//#define DO_ADC_TEST 1
#endif //DO_OPTIONNAL_CONFIG

/****************************************************************************************************************************
											MI125 Initialization function
****************************************************************************************************************************/
Result InitMi125( adp_handle_bus_access hBusAccess, unsigned uBoardPosition, unsigned int uRefClkSource)
{
	adp_result_t res;
	connection_state state;
	unsigned int channellanecalib, channelcalibstatus, master;

	// Check for a valid board instance
	if (uBoardPosition != 1 && uBoardPosition !=2)
	{
		printf("Invalid MI125 board position specified (must be 1 or 2)\r\n");
		return -100;
	}

	// Retrieve TCP/IP connection from bus access object
	res = BusAccess_GetConnectionState(hBusAccess, &state);
	if(FAILURE(res))
	{
		printf("Error : BusAccess_GetConnectionState \r\n");
		return res;
	}

	// Minimally verify a board is detected and mi125 fpga core is detected (WARNING: does not verify if a real mi125 board is used!!!)
	res = MI125_Presence_send(&state, uBoardPosition);
	if(FAILURE(res))
	{
		printf("Error : MI125_Presence_send \r\n");
		return res;
	}
	printf("    - MI125 board #%d \r\n",uBoardPosition);

	// Display if this module is a clock master or not.
	// In a dual stack board, a module which is not a clock master for the FPGA
	// is using the another module as clock source
	res = MI125_mi125_get_clkmaster_send(&state, uBoardPosition, &master);
	if(FAILURE(res))
	{
		printf("Error : MI125_mi125_get_clkmaster_send \r\n");
		return res;
	}

	// Display if current board is a clk master
	printf("    - Board #%d is a clk master: ",uBoardPosition);
	if (master)
	{
		printf("yes.\n");
	}
	else
	{
		// When clock slave, it must be clocked from bottom adapter
        uRefClkSource = MI125_CLKSRCBOTTOMFMC;
        printf("no.\n");
	}

#ifdef DO_VERSIONS_DISPLAY
	// Display MI125 hardware core and driver versions (for info only)
	{
		unsigned int core_version, drv_version;

		res = MI125_mi125_get_versions_send(&state, uBoardPosition, &core_version, &drv_version);
		if(FAILURE(res))
		{
			printf("Error : MI125_mi125_get_versions_send \r\n");
			return res;
		}	
		printf("    - Core Version: 0x%04X, Driver Version: 0x%04X\r\n" ,core_version, drv_version);
	}
#endif // DO_VERSIONS_DISPLAY
	
	// Power up MI125
	res = MI125_powerup_send(&state, uBoardPosition);
	if(FAILURE(res))
	{
		printf( "Error : MI125_powerup_send \r\n");
		return res;
	}
 
	// Reset and setup MI125 with basic default configuration (after module powerup, all 16 channels are configured)
	res = MI125_mi125_reset_send(&state, uBoardPosition);
	if(FAILURE(res))
	{
		printf( "Error : MI125_mi125_reset_send \r\n");
		return res;
	}

	/************************************************************************************************************************
									Steps between these lines are not mandatory (begin)
	************************************************************************************************************************/

	// Setup ADC clock source
	// This is only necessary if the clock source is not default internal clock
	res = MI125_mi125_set_clksrc_send(&state, uBoardPosition, (MI125_mi125_clock_source)uRefClkSource);
	if(FAILURE(res))
	{
		printf("Error : MI125_mi125_set_clksrc_send \r\n");
		return res;
	}

#ifdef DO_OPTIONNAL_CONFIG
#ifdef DO_I2CSCAN
	// This is an optionnal i2c bus scan test (assume 2 mi125 modules in piggy back)
	{
		MI125_mi125_i2cscan scanraw;
		MI125_mi125_i2caddr scan_res; 
		unsigned char detect_ok, ndevices; 
		// This value hold the max number of i2c devices that should be detected on the bus. 0 means do not
		// check for any other devices than the current tested module instance. When we know how many module
		// instances are present, we can use for a perseus601x carrier a value of 5 (1 mi125 module) or 9 (2 mi125 modules). 
		unsigned char maxexpected = 0;

		// Do the i2c bus scan for maximum specified devices
		res = MI125_mi125_scan_i2c_send(&state, uBoardPosition, maxexpected, &scanraw, &scan_res, &ndevices, &detect_ok);
		if(FAILURE(res))
		{
			printf("Error : MI125_mi125_scan_i2c_send \r\n");
			return res;
		}
		printf("    - I2C Bus scan valid: ");
		if (detect_ok)
		{
			printf("yes.\n");
		}
		else
		{
			printf("no.\n");

			if (scan_res.spibridge)
			{
				printf("    - Spi bridge detected.\n");
			}
			else
			{
				printf("    - Spi bridge not detected.\n");
			}

			if (scan_res.sensor)
			{
				printf("    - Temperature sensor detected.\n");
			}
			else
			{
				printf("    - Temperature sensor not detected.\n");
			}

			if (scan_res.eeprom)
			{
				printf("    - Eeprom detected.\n");
			}
			else
			{
				printf("    - Eeprom not detected.\n");
			}

			if (scan_res.expander)
			{
				printf("    - IO expander detected.\n");
			}
			else
			{
				printf("    - IO expander not detected.\n");
			}

			if (ndevices > maxexpected && maxexpected != 0)
			{
				printf("    - Number of devices detected: %d, max expected: %d.\n", ndevices, maxexpected);
			}
		}
	}
#endif // DO_I2CSCAN

#ifdef DO_LOCALOSC_SW_TEST
	// This is an optionnal local oscillator test (this test changes the clock source)
	{
		unsigned char result_ok;

		// Do the local oscillator switch test
		res = MI125_mi125_test_localoscsw_send(&state, uBoardPosition, &result_ok);
		if(FAILURE(res))
		{
			printf("Error : MI125_mi125_test_localoscsw_send \r\n");
			return res;
		}
		printf("    - Local oscillator sw valid: ");
		if (result_ok)
		{
			printf("yes.\n");
		}
		else
		{
			printf("no.\n");
		}

		// Setup ADC clock source to what we wanted because it may has been changed by local osc sw test above
		// This is only necessary if the clock source is not default internal clock
		res = MI125_mi125_set_clksrc_send(&state, uBoardPosition, (MI125_mi125_clock_source)uRefClkSource);
		if(FAILURE(res))
		{
			printf("Error : MI125_mi125_set_clksrc_send \r\n");
			return (res);
		}
	}
#endif // DO_LOCALOSC_SW_TEST

#if DO_ADC_TEST
	// This is an optionnal communication test with each ADC
	{
		unsigned char written, verify, detected, count;
		MI125_mi125_adcid adcn[]={MI125_ADC0,MI125_ADC1,MI125_ADC2,MI125_ADC3};

		// Test each adc
		for(count=0;count<4;count++)
		{
			res = MI125_mi125_checkadc_send(&state, uBoardPosition, adcn[count], &written, &verify, &detected);
			if(FAILURE(res))
			{
				printf("Error : MI125_mi125_checkadc_send \r\n");
				return res;
			}
			printf("    - ADC #%d detected: ", adcn[count]);
			if (detected)
			{
				printf("yes.\n");
			}
			else
			{
				printf("no.\n");
			}
		}
	}
#endif // DO_ADC_TEST

	// Setup board trigout function (do not connect an externel trig source on the external trig pin at the same time)
	// To use the trigout function, it must be connected somewhere in the FPGA user logic (not provided by default)
	res = MI125_mi125_set_trigout_send(&state, uBoardPosition, MI125_TRIGOUTOFF);
	if(FAILURE(res))
	{
		printf("Error : MI125_mi125_set_trigout_send\r\n");
		return res;
	}

	// Config the MI125 with specified user setup (if different than default provided at reset)
	res = MI125_mi125_set_config_send(&state, uBoardPosition,MI125_04CHANNELS, MI125_TERMON1750UA, MI125_RANDOMIZEOFF, MI125_TWOCOMPLEMENTFORMAT);
	if(FAILURE(res))
	{
		printf("Error : MI125_mi125_set_config_send \r\n");
		return (res);
	}

#ifdef DO_FORCE_CALIB
	// If user changed external clk frequency value (after module is already running) for this clock source mode MI125_CLKSRCEXT for example,
	// it will need to do a clock reset first, then a calibration.
	// If one module (in a multiple modules setup) is a clock master and the other is not,
	// if the clock is reset on the master module, the other module must be recalibrated as well...
	{
		res = MI125_mi125_clockreset_send(&state, uBoardPosition);
		if(FAILURE(res))
		{
			printf("MI125_mi125_clockreset error\r\n");
			return res;
		}

		// Calibration can be done as needed, but the clock must be reset first if the clock frequency has changed:
		// this is done automatically in all cases in api functions, but not when the clock source is external which is impossible to
		// control what the user is doing with the external clock.
		res = MI125_mi125_digital_adccalibration_send(&state, uBoardPosition);
		if(FAILURE(res))
		{
			printf("MI125_mi125_digital_adccalibration error\r\n");
			return res;
		}
	}
#endif //DO_FORCE_CALIB

#ifdef DO_ADC_SIMULATION
	// If we want to enable adc test mode by using a specific test pattern
	{
		unsigned short pattern[MI125_NBMAX] = {0x0249, 0x0492};

		printf("    - Using ADC test pattern: 0x%04X\r\n", pattern[uBoardPosition-1]);
		res = MI125_mi125_set_testmode_send(&state, uBoardPosition, MI125_TESTMODE2, pattern[uBoardPosition-1]);
		if(FAILURE(res))
		{
			printf("MI125_mi125_set_testmode error\r\n");
			return res;
		}
	}
#endif //DO_ADC_SIMULATION
#endif //DO_OPTIONNAL_CONFIG

	// Display ADC channels lanes calibration information
	res = MI125_mi125_get_channelcalibstatus_send(&state, uBoardPosition, &channellanecalib, &channelcalibstatus);
	if(FAILURE(res))
	{
		printf("Error : MI125_mi125_get_channelcalibstatus_send \r\n");
		return res;
	}

	// Check if the last channels calibration was ok
	if (channelcalibstatus)
	{
		printf("    - All channels calibration successfull!\r\n");
	}
	else
	{
		printf("    - Calibration problem, lane status: %08X\r\n", channellanecalib);
	}

#ifdef DO_TEMP_DISPLAY
	// Display the current MI125 pcb temperature in 0.1C resolution
	// WARNING, this temperature is for information only. This does not
	// give ADC core temperature information. User must make sure that
	// temperature of MI125 board (incl ADC) meet the requierements in his
	// system. Some calibration could be needed between this value
	// and different places/parts on the MI125 board.
	{
		short temp;

		res = MI125_mi125_get_temperature_send(&state, uBoardPosition, MI125_TEMP0DOT1C, &temp);
		if(FAILURE(res))
		{
			printf("Error : MI125_mi125_get_temperature_send \r\n");
			return res;
		}
		printf("    - PCB Board #%d temp: %d.%01dC\r\n",uBoardPosition, temp/10,abs(temp%10));
	}
#endif // DO_TEMP_DISPLAY

	/************************************************************************************************************************
									Steps between these lines are not mandatory (end)
	************************************************************************************************************************/
	return 0;
}
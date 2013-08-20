/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
//#include "xil_types.h"

/*
 * The following constant maps to the name of the hardware instances that
 * were created in the EDK XPS system.
 */
#define GPIO_EXAMPLE_DEVICE_ID  XPAR_AXI_GPIO_0_DEVICE_ID
//XPAR_LEDS_POSITIONS_DEVICE_ID


/*
 * The following constant is used to determine which channel of the GPIO is
 * used for the LED if there are 2 channels supported.
 */
#define LED_CHANNEL 1

/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio Gpio; /* The Instance of the GPIO Driver */

int main(void)
{
	u32 value = 0;
	int Status;
	u32 period = 0;
	u32 brightness = 0;
	u32 leido = 0;
	u32 dir, reg_val;



	//pruebo aqui mismo la config
	// Register (slcr) FPGA_RST_CTRL


	//estado inicial de registros
	dir = 0xF800000C;
	reg_val = Xil_In32(dir);
	xil_printf("Registro protegido = %d \n", reg_val);

	//ahora permito la escritura
	dir = 0xF8000008;
	reg_val = 0xDF0D;
	Xil_Out32(dir,reg_val); //permito la escritura con la unlock key

	//vuelvo a leer ahora
	dir = 0xF800000C;
	reg_val = Xil_In32(dir);
	xil_printf("Registro protegido desp = %d \n", reg_val);

	//leo el PLL Status
	dir= 0xF800010C;  //PLL_Status dir
	reg_val = Xil_In32(dir);
    xil_printf("Valor de PLL Status = %d \n", reg_val);

    //read IP_PLL_CTRL
    dir= 0xF8000108; //IO_PLL_CTRL
	reg_val = Xil_In32(dir);
    xil_printf("Valor de IO_PLL_CTRL = %d \n", reg_val);

    //read IO_PLL_CFG
    dir = 0xF8000118;
	reg_val = Xil_In32(dir);
    xil_printf("Valor de IO_PLL_CFG = %d \n", reg_val);

    //Force PLL into bypass mode




	//ahora deberia volver a bloquear los slcr...pero luego...

    ////////////
	//////// basura
	/////////////

	/*
	* Initialize the GPIO driver
	*/
	Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
	return XST_FAILURE;
	}

	// Clear LEDs
	dir = 0xF8000240;;
    reg_val = Xil_In32(dir);


	//pruebo ahora lo de los reset de la FPGA
	dir = 0xF8000240;
	reg_val = 0x2; //reset para mi PL;
	Xil_Out32(dir,reg_val);


	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0);
	print("Select a Brightness between 0 and 9\n\r");
	value = inbyte();
	period = value - 0x30;
	leido = XGpio_DiscreteRead(&Gpio, 2);
	xil_printf("Brightness Level %d selected...valor leido %d led %d \n\r", period, leido, reg_val);




	//vuelvo a ponerlo a 1
	dir = 0xF8000240;
	reg_val = 0x0; //pongo todos los reset a 0;
	Xil_Out32(dir,reg_val);

	////////////////////////////
	//////////     basura
	/////////////////


	// Clear LEDs
	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0);

	while (1) {
		print("Select a Brightness between 0 and 9\n\r");
		value = inbyte();
		period = value - 0x30;
		leido = XGpio_DiscreteRead(&Gpio, 2);
		xil_printf("Brightness Level %d selected...valor leido %d led %d \n\r", period, leido, reg_val);

		// Since the LED width is 1e6 clk cycles, w666e need to normalize
		// the period to that clk. Since we accept values 0-9, that will
		// scale period from 0-999,000. 0 turns off LEDs, 999,000 is full
		// brightness
		brightness = period * 110000;

		// Write the duty_cycle width (Period) out to the PL GPIO peripheral
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, brightness);
	} // This closes the while loop
	return XST_SUCCESS;
} // This closes main()


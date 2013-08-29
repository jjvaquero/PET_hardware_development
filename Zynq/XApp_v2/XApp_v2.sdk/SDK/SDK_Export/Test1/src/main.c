/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
//#include "xil_types.h"
//To use interrupts to read ADC data
#include "xscugic.h"
#include "xil_exception.h"

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

//definitions to use with the interrupts
#define BUTTON_CHANNEL 2
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID 91 //  XPAR_FABRIC_GPIO_0_VEC_ID
#define INTC XScuGic
#define INTC_HANDLER XScuGic_InterruptHandler
#define BUTTON_INTERRUPT XGPIO_IR_CH2_MASK

/************************** Variable Definitions *****************************/

/*
 * The following are declared globally so they are zeroed and so they are
 * easily accessible from a debugger
 */

XGpio Gpio; /* The Instance of the GPIO Driver */

//interrupt variable
static INTC Intc;
int values[100];
int curr_index;

int main(void)
{
	u32 value = 0;
	int Status;
	int i;
	u32 period = 0;
	u32 brightness = 0;
	u32 leido = 0;
	u32 dir, reg_val;

	curr_index = 0;


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

	/*
	* Setup the interrupts such that interrupt processing can occur.
	* If an error occurs then exit
	*/
	Status = SetupInterruptSystem();
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

		//now I can send all the previous values...
		//to make sure that there no race conditions I first i will disable all the interrupts
		/*
			* Disable the interrupt
			*/
			XGpio_InterruptDisable(&Gpio, BUTTON_INTERRUPT);
			xil_printf("Read Values \n\r");
			for ( i = 0; i<100; i++){
				xil_printf(" %d, ",values[i]);
			}


			/* Clear the interrupt such that it is no longer pending in the GPIO */
				(void)XGpio_InterruptClear(&Gpio, BUTTON_INTERRUPT);
				/*
				* Enable the interrupt
				*/
				XGpio_InterruptEnable(&Gpio, BUTTON_INTERRUPT);



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


//interrupts functions

void GpioIsr(void *InstancePtr)
{
    u32 read_value;
	XGpio *GpioPtr = (XGpio *)InstancePtr;
	/*
	* Disable the interrupt
	*/
	XGpio_InterruptDisable(GpioPtr, BUTTON_INTERRUPT);
	/*
	* There should not be any other interrupts occuring other
	* than the the button changes
	*/
	if ((XGpio_InterruptGetStatus(GpioPtr) & BUTTON_INTERRUPT)!= BUTTON_INTERRUPT) {
	return;
	}
	/*
	* Read state of push buttons and determine which ones changed
	* states from the previous interrupt. Save a copy of the buttons
	* for the next interrupt
	*/
	read_value = XGpio_DiscreteRead(&Gpio, BUTTON_CHANNEL);
	if (curr_index < 99){
		values[curr_index] = read_value & 0x0000FFFF;
		curr_index++;
		if (curr_index >= 99) curr_index = 0;
	}


	/* Clear the interrupt such that it is no longer pending in the GPIO */
	(void)XGpio_InterruptClear(GpioPtr, BUTTON_INTERRUPT);
	/*
	* Enable the interrupt
	*/
	XGpio_InterruptEnable(GpioPtr, BUTTON_INTERRUPT);
	//uncomment later to see if it is working
	//print("Int \n");
}
/****************************************************************************/
/**
* This function sets up the interrupt system for the example. The processing
* contained in this funtion assumes the hardware system was built with
* and interrupt controller.
*
* @param None.
*
* @return A status indicating XST_SUCCESS or a value that is contained in
* xstatus.h.
*
* @note None.
*
*****************************************************************************/
int SetupInterruptSystem()
{
	int Result;
	INTC *IntcInstancePtr = &Intc;
	#ifdef XPAR_INTC_0_DEVICE_ID /* * Initialize the interrupt controller driver so that it's ready to use. * specify the device ID that was generated in xparameters.h */ Result = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID); if (Result != XST_SUCCESS) { return Result; }
	/* Hook up interrupt service routine */ XIntc_Connect(IntcInstancePtr, INTC_GPIO_INTERRUPT_ID, (Xil_ExceptionHandler)GpioIsr, &Gpio);
	/* Enable the interrupt vector at the interrupt controller */
	XIntc_Enable(IntcInstancePtr, INTC_GPIO_INTERRUPT_ID);
	/* * Start the interrupt controller such that interrupts are recognized * and handled by the processor */ Result = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE); if (Result != XST_SUCCESS) { return Result; }
	#else
	XScuGic_Config *IntcConfig;
	/*
	* Initialize the interrupt controller driver so that it is ready to
	* use.
	*/
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}
	Result = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
			IntcConfig->CpuBaseAddress);
	if (Result != XST_SUCCESS) {
		return XST_FAILURE;
	}
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, INTC_GPIO_INTERRUPT_ID,
		0xA0, 0x3);
	/*
	* Connect the interrupt handler that will be called when an
	* interrupt occurs for the device.
	*/
	Result = XScuGic_Connect(IntcInstancePtr, INTC_GPIO_INTERRUPT_ID,
		(Xil_ExceptionHandler)GpioIsr, &Gpio);
	if (Result != XST_SUCCESS) {
		return Result;
	}
	/*
	* Enable the interrupt for the GPIO device.
	*/
	XScuGic_Enable(IntcInstancePtr, INTC_GPIO_INTERRUPT_ID);
	#endif
	/*
	* Enable the GPIO channel interrupts so that push button can be
	* detected and enable interrupts for the GPIO device
	*/
	XGpio_InterruptEnable(&Gpio, BUTTON_INTERRUPT);
	XGpio_InterruptGlobalEnable(&Gpio);
	/*
	* Initialize the exception table and register the interrupt
	* controller handler with the exception table
	*/
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
		(Xil_ExceptionHandler)INTC_HANDLER, IntcInstancePtr);
	/* Enable non-critical exceptions */
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

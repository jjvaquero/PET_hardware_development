package com.hamamatsu.radiationdetector.rdmusb;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.util.Log;

public class hybrid {
	//
	//
	//
	public static final int HN_SUCCESS = 0;
	public static final int HN_INVALID_HANDLE = 1;
	public static final int HN_UNSUCCESS = 2;
	public static final int HN_INVALID_VALUE = 3;
	public static final int HN_NOT_UPDATED = 4;

	//
	//
	//
	public static final int VENDOR_ERASE_EEPROM = (0x03); // EEPROMの読み出し
	public static final int VENDOR_READ_EEPROM = (0x04); // EEPROMの読み出し
	public static final int VENDOR_WRITE_EEPROM = (0x05); // EEPROMの書き込み

	public static final int VENDOR_FIRM_VERSION = (0x10); // ファームウェアのバージョン
	public static final int VENDOR_FIRM_BUILD = (0x11); // ファームウェアのビルド日時

	public static final int FPGA_ADC_DELAY = (0x0A);
	public static final int FPGA_HOLD_DELAY = (0x0B);
	public static final int FPGA_DAC_VALUE = (0x0C);
	public static final int TEMPERATURE_DIGITAL = (0x0D);
	public static final int TEMPERATURE_ANALOG = (0x0E);

	public static final int HVPS_DAC_VALUE = (0x20);
	public static final int I2C_TXD_REQUEST = (0x21);
	public static final int I2C_RXD_REQUEST = (0x22);
	public static final int HVPS_REQ_MODE = (0x23);

	//
	// IIC シンボル
	//
	public static final int I2C_REQ_MODE = (0); // 動作モード指定

	public static final int I2C_REQ_TEMP_D = (2); // 温度情報 デジタル
	public static final int I2C_REQ_TEMP_A = (3); // 温度情報 アナログ

	public static final int I2C_REQ_DAC = (6); // 設定電圧値
	public static final int I2C_REQ_ADC_I = (7); // モニタ電流値
	public static final int I2C_REQ_ADC_V = (8); // モニタ電圧値

	public static final int I2C_REQ_COEFF0 = (11); // 補正係数 (BASE)
	public static final int I2C_REQ_COEFF1 = (12); // 補正係数 (A)
	public static final int I2C_REQ_COEFF2 = (13); // 補正係数 (B)
	public static final int I2C_REQ_COEFF3 = (14); // 補正係数 (C)

	public static final int I2C_REQ_CMD = (255); // レジスタ変更要求

	//
	//
	//
	public hybrid() {
	}

	public static final int HN_GetDataAndTemperature(
			UsbDeviceConnection DeviceHandle, UsbEndpoint PipeHandle,
			int Size[], int Data[], float Celcius[]) {
		int result = HN_UNSUCCESS;
		int pd[] = new int[dllmain.DATASIZE + dllmain.HDSIZE];
		int value;
		int sizeh, sizel;
		float temp;

		result = dllmain.readSensorData(DeviceHandle, PipeHandle, pd);
		if (result == HN_SUCCESS) {
			// データ部
			sizeh = pd[2];
			sizel = pd[3];
			sizeh = (sizeh >> 8) + ((sizeh << 8) & 0x0000FFFF);
			sizel = (sizel >> 8) + ((sizel << 8) & 0x0000FFFF);
			value = sizeh + sizel;
			for (int i = 0; i < value; i++) {
				Data[i] = pd[i + 8];
			}
			Size[0] = value;

			// 温度情報
			if (pd[5] != 0) {
				value = pd[5];
				value = (value >> 8) + ((value << 8) & 0x0000FFFF);
				temp = (float) value;
			} else {
				value = pd[4];
				value = (value >> 8) + ((value << 8) & 0x0000FFFF);
				temp = (float) value * 0.03125f;
			}
			Celcius[0] = temp;
		}

		Log.d("test",
				String.valueOf(Size[0]) + " + " + String.valueOf(Celcius[0])
						+ " + " + String.valueOf(Data[0]));

		return result;
	}

	public static final int HN_ReadEeprom(UsbDeviceConnection DeviceHandle,
			int Address, int Data[]) {
		int result = HN_UNSUCCESS;
		byte[] dat = new byte[2];

		result = dllmain.usbControlInRequest(DeviceHandle, VENDOR_READ_EEPROM,
				Address, 0, 2, dat);

		if (result != HN_SUCCESS) {
			Data[0] = 0;
		} else {
			Data[0] = (dat[1] & 0xFF) + ((dat[0] & 0xFF) << 8);
		}

		return result;
	}

	public static final int HvpsGetDacData(UsbDeviceConnection DeviceHandle,
			int Data[]) {
		int result = HN_UNSUCCESS;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					I2C_RXD_REQUEST, I2C_REQ_DAC, 0, 0, null);
			if (result != HN_SUCCESS) {
				return result;
			}
			Thread.sleep(100);
			result = dllmain.usbControlInRequest(DeviceHandle, I2C_RXD_REQUEST,
					0, 0, 2, value);

			Data[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	public static final int HvpsGetAdcVoltage(UsbDeviceConnection DeviceHandle,
			int Voltage[]) {
		int result = HN_UNSUCCESS;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					I2C_RXD_REQUEST, I2C_REQ_ADC_V, 0, 0, null);
			if (result != HN_SUCCESS) {
				return result;
			}
			Thread.sleep(100);
			result = dllmain.usbControlInRequest(DeviceHandle, I2C_RXD_REQUEST,
					0, 0, 2, value);

			Voltage[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	public static final int HvpsGetAdcCurrent(UsbDeviceConnection DeviceHandle,
			int Current[]) {
		int result = HN_UNSUCCESS;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					I2C_RXD_REQUEST, I2C_REQ_ADC_I, 0, 0, null);
			if (result != HN_SUCCESS) {
				return result;
			}
			Thread.sleep(100);
			result = dllmain.usbControlInRequest(DeviceHandle, I2C_RXD_REQUEST,
					0, 0, 2, value);

			Current[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	public static final int HvpsGetAdcTemperature(
			UsbDeviceConnection DeviceHandle, int Temperature[]) {
		int result = HN_UNSUCCESS;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					I2C_RXD_REQUEST, I2C_REQ_TEMP_A, 0, 0, null);
			if (result != HN_SUCCESS) {
				return result;
			}
			Thread.sleep(100);
			result = dllmain.usbControlInRequest(DeviceHandle, I2C_RXD_REQUEST,
					0, 0, 2, value);

			Temperature[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	public static final int HvpsGetTemperature(
			UsbDeviceConnection DeviceHandle, int Channel, int Temp[],
			double Celcius[]) {
		int result = HN_UNSUCCESS;
		byte value[] = new byte[2];
		double tval = 255;
		int ivalue = 0;

		try {
			if (Channel == 0) {
				// Analog output
				result = dllmain.usbControlOutRequest(DeviceHandle,
						I2C_RXD_REQUEST, I2C_REQ_TEMP_A, 0, 0, null);
				if (result != HN_SUCCESS) {
					return result;
				}
				Thread.sleep(100);
				result = dllmain.usbControlInRequest(DeviceHandle,
						I2C_RXD_REQUEST, 0, 0, 2, value);

				ivalue = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);

				// 温度係数変換
				double t1 = 0;
				double v1 = 1034;
				double t2 = 50;
				double v2 = 760;
				double range = 1250; // 1250mV

				tval = ivalue * range / 65535;
				tval = t1 + ((tval - v1) * (t2 - t1)) / (v2 - v1);
			} else if (Channel == 1) {
				// I2C output
				result = dllmain.usbControlInRequest(DeviceHandle,
						TEMPERATURE_DIGITAL, 0, 0, 2, value);
				ivalue = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);
				tval = (float) ivalue * 0.03125;
			} else {
				result = HN_UNSUCCESS;
			}

			Temp[0] = ivalue;
			Celcius[0] = tval;
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}
}

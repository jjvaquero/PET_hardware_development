package com.hamamatsu.radiationdetector.rdmusb;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;

public class C12137 {
	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_GetDacDataAndTemperature 取得済みデータ要求 温度情報・イベント数カウンタ値
	 * ----------
	 * ------------------------------------------------------------------
	 */
	public static final int RdmUsb_GetDacDataAndTemperature(
			UsbDeviceConnection DeviceHandle, UsbEndpoint PipeHandle,
			int Size[], int Data[], int Index[], float Celcius[]) {
		int result, i;
		int pd[] = new int[dllmain.DATASIZE + dllmain.HDSIZE];
		int value;
		float tval;

		result = dllmain.read_mppc_data(DeviceHandle, PipeHandle, pd);
		if (result != 0) {
			return result;
		}

		// ヘッダ部のエンディアン変換
		for (i = 0; i < 8; i++) {
			value = pd[i];
			pd[i] = (value >> 8) + ((value << 8) & 0x0000FFFF);
			// _RPTF2(_CRT_WARN, "\t>pd[%d] = %X\n", i, pd[i]);
		}

		// 温度情報
		float t1 = 0.0f;
		float v1 = 1034.0f;
		float t2 = 50.0f;
		float v2 = 760.0f;
		float range = 1250.0f; // 1250mV

		value = pd[5];
		tval = (float) value * range / 65535.0f;
		Celcius[0] = t1 + ((tval - v1) * (t2 - t1)) / (v2 - v1);

		// データ取得インデックス
		Index[0] = pd[6];

		// データ部
		value = pd[2] + pd[3];
		for (i = 0; i < value; i++) {
			Data[i] = pd[i + 8];
		}
		Size[0] = value;

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_ReadEeprom EEPROMからデータ取得要求
	 * ----------------------------------
	 * ------------------------------------------
	 */
	public static final int RdmUsb_ReadEeprom(UsbDeviceConnection DeviceHandle,
			int Address, int Data[]) {
		int result;
		byte[] dat = new byte[2];

		result = dllmain.usbControlInRequest(DeviceHandle,
				hybrid.VENDOR_READ_EEPROM, Address, 0, 2, dat);

		if (result != 0) {
			Data[0] = 0;
		} else {
			Data[0] = (dat[1] & 0xFF) + ((dat[0] & 0xFF) << 8);
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_ReadEeprom EEPROMからデータ取得要求
	 * ----------------------------------
	 * ------------------------------------------
	 */
	public static final int RdmUsb_ReadEepromString(
			UsbDeviceConnection DeviceHandle, int Address, String str[]) {
		int result;
		byte[] dat = new byte[16];

		result = dllmain.usbControlInRequest(DeviceHandle,
				hybrid.VENDOR_READ_EEPROM, Address, 0, 16, dat);

		if (result != 0) {
			str[0] = "";
		} else {
			str[0] = "";
			for (int i = 0; i < 16; i++) {
				if (dat[i] == 0) {
					break;
				}
				str[0] += new String(dat, i, 1);
			}
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_WriteEeprom EEPROMへの書き込み要求
	 * ----------------------------------
	 * ------------------------------------------
	 */
	public static final int RdmUsb_WriteEeprom(
			UsbDeviceConnection DeviceHandle, int Address, int Data[]) {
		int result;
		byte[] dat = new byte[2];

		dat[0] = (byte) ((Data[0] >> 8) & 0xFF);
		dat[1] = (byte) (Data[0] & 0xFF);
		result = dllmain.usbControlOutRequest(DeviceHandle,
				hybrid.VENDOR_WRITE_EEPROM, Address, 0, 2, dat);

		try {
			Thread.sleep(100); // 書き込み完了まで次の命令をブロックするためにWait追加
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_SetEnergyThreshold γ線のエネルギー下限の設定
	 * ----------------------------
	 * ------------------------------------------------
	 */
	public static final int RdmUsb_SetEnergyThreshold(
			UsbDeviceConnection DeviceHandle, int Data[]) {
		int reslut;
		int dat = (Data[0] & 0x0FFF);

		reslut = dllmain.usbControlOutRequest(DeviceHandle,
				hybrid.FPGA_DAC_VALUE, dat, 0, 0, null);

		return reslut;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_HvpsGetDcdcControlVoltage 高電圧モジュールの制御電圧取得 引数は16ビット値で指定
	 * ------
	 * ----------------------------------------------------------------------
	 */
	public static final int RdmUsb_HvpsGetDcdcControlVoltage(
			UsbDeviceConnection DeviceHandle, int Data[]) {
		int result = 0;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, hybrid.I2C_REQ_DAC, 0, 0, null);
			if (result != 0) {
				return result;
			}

			Thread.sleep(100);// I2C通信によるデータの更新が行われるまでWait

			result = dllmain.usbControlInRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, 0, 0, 2, value);

			if (result != 0) {
				Data[0] = 0;
			} else {
				Data[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_HvpsGetDcdcOutputCurrent 高電圧モジュールの出力電流モニタ値
	 * ------------------
	 * ----------------------------------------------------------
	 */
	public static final int RdmUsb_HvpsGetDcdcOutputVoltage(
			UsbDeviceConnection DeviceHandle, int Voltage[]) {
		int result = 0;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, hybrid.I2C_REQ_ADC_V, 0, 0, null);
			if (result != 0) {
				return result;
			}

			Thread.sleep(100);// I2C通信によるデータの更新が行われるまでWait

			result = dllmain.usbControlInRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, 0, 0, 2, value);

			if (result != 0) {
				Voltage[0] = 0;
			} else {
				Voltage[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_HvpsGetDcdcOutputCurrent 高電圧モジュールの出力電流モニタ値
	 * ------------------
	 * ----------------------------------------------------------
	 */
	public static final int RdmUsb_HvpsGetDcdcOutputCurrent(
			UsbDeviceConnection DeviceHandle, int Current[]) {
		int result = 0;
		byte value[] = new byte[2];

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, hybrid.I2C_REQ_ADC_I, 0, 0, null);
			if (result != 0) {
				return result;
			}

			Thread.sleep(100);// I2C通信によるデータの更新が行われるまでWait

			result = dllmain.usbControlInRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, 0, 0, 2, value);

			if (result != 0) {
				Current[0] = 0;
			} else {
				Current[0] = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_HvpsGetTemperature アナログ温度センサの値取得
	 * ----------------------------
	 * ------------------------------------------------
	 */
	public static final int RdmUsb_HvpsGetTemperature(
			UsbDeviceConnection DeviceHandle, float Celcius[], int Digit[]) {
		int result = 0;
		byte value[] = new byte[2];
		float tval = 255.0f;

		// 温度係数変換
		float t1 = 0.0f;
		float v1 = 1034.0f;
		float t2 = 50.0f;
		float v2 = 760.0f;
		float range = 1250.0f; // 1250mV

		try {
			result = dllmain.usbControlOutRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, hybrid.I2C_REQ_TEMP_A, 0, 0, null);
			if (result != 0) {
				return result;
			}

			Thread.sleep(100);// I2C通信によるデータの更新が行われるまでWait

			result = dllmain.usbControlInRequest(DeviceHandle,
					hybrid.I2C_RXD_REQUEST, 0, 0, 2, value);

			if (result != 0) {
				Celcius[0] = 0.0f;
				Digit[0] = 0;
			} else {
				int Data = (value[1] & 0xFF) + ((value[0] & 0xFF) << 8);
				Digit[0] = Data;
				tval = (float) Data * range / 65535.0f;
				Celcius[0] = t1 + ((tval - v1) * (t2 - t1)) / (v2 - v1);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		return result;
	}

	/*
	 * --------------------------------------------------------------------------
	 * -- 【関数】RdmUsb_HvpsSetDcdcControlVoltage 高電圧モジュールの電圧制御 引数は16ビット値で指定
	 * --------
	 * --------------------------------------------------------------------
	 */
	public static final int RdmUsb_HvpsSetDcdcControlVoltage(
			UsbDeviceConnection DeviceHandle, int Data[]) {
		int result = 0;
		byte dat[] = new byte[2];
		dat[0] = (byte) ((Data[0] >> 8) & 0xFF);
		dat[1] = (byte) (Data[0] & 0xFF);

		result = dllmain.usbControlOutRequest(DeviceHandle,
				hybrid.I2C_RXD_REQUEST, hybrid.I2C_REQ_DAC, 0, 0, dat);
		if (result != 0) {
			return result;
		}

		return result;
	}
}
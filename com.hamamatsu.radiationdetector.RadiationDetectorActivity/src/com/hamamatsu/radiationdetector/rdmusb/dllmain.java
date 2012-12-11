package com.hamamatsu.radiationdetector.rdmusb;

import java.nio.ByteBuffer;

import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbRequest;

public class dllmain {
	public static final int HDSIZE = 8;
	public static final int DATASIZE = 1048;

	public static final int readSensorData(UsbDeviceConnection DeviceHandle,
			UsbEndpoint PipeHandle, int Data[]) {
		UsbRequest request = new UsbRequest();
		int returnValue = hybrid.HN_UNSUCCESS;
		int size = (HDSIZE + DATASIZE);

		// thread_code
		ByteBuffer transferBuffer = ByteBuffer.allocate(size * 2);
		request.initialize(DeviceHandle, PipeHandle);
		request.queue(transferBuffer, transferBuffer.remaining());
		if (DeviceHandle.requestWait() != request) {
			returnValue = hybrid.HN_UNSUCCESS;
		} else {
			for (int i = 0; i < size; i += 2) {
				Data[i / 2] = ((transferBuffer.get(i + 0) & 0xFF))
						+ ((transferBuffer.get(i + 1) & 0xFF) << 8);
			}

			if (Data[0] == 0x5A5A) {
				returnValue = hybrid.HN_SUCCESS;
			} else {
				returnValue = hybrid.HN_NOT_UPDATED;
			}
		}

		return returnValue;
	}

	/*----------------------------------------------------------------------
	【関数】usbControlOutRequest
	【概要】
	----------------------------------------------------------------------*/
	public static final int usbControlOutRequest(
			UsbDeviceConnection DeviceHandle, int bRequest, int wValue,
			int wIndex, int wLength, byte TransferBuffer[]) {
		// デバイスハンドルの確認
		if (DeviceHandle == null) {
			return hybrid.HN_INVALID_HANDLE;
		}

		int ret = DeviceHandle.controlTransfer(0x43, bRequest, wValue, wIndex,
				TransferBuffer, wLength, 0);

		if (ret == -1) {
			return hybrid.HN_UNSUCCESS;
		}

		return hybrid.HN_SUCCESS;
	}

	/*----------------------------------------------------------------------
	【関数】usbControlInRequest
	【概要】
	----------------------------------------------------------------------*/
	public static final int usbControlInRequest(
			UsbDeviceConnection DeviceHandle, int bRequest, int wValue,
			int wIndex, int wLength, byte TransferBuffer[]) {
		// デバイスハンドルの確認
		if (DeviceHandle == null) {
			return hybrid.HN_INVALID_HANDLE;
		}

		int ret = DeviceHandle.controlTransfer(0xC3, bRequest, wValue, wIndex,
				TransferBuffer, wLength, 0);

		if (ret == -1) {
			return hybrid.HN_UNSUCCESS;
		}

		if (wLength != ret) {
			return hybrid.HN_UNSUCCESS;
		}

		return hybrid.HN_SUCCESS;
	}

	public static final int read_mppc_data(UsbDeviceConnection DeviceHandle,
			UsbEndpoint PipeHandle, int Data[]) {
		UsbRequest request = new UsbRequest();
		int returnValue = hybrid.HN_UNSUCCESS;
		int size = (HDSIZE + DATASIZE);

		// thread_read_mppc_data
		ByteBuffer transferBuffer = ByteBuffer.allocate(size * 2);
		request.initialize(DeviceHandle, PipeHandle);
		request.queue(transferBuffer, transferBuffer.remaining());
		if (DeviceHandle.requestWait() != request) {
			returnValue = hybrid.HN_UNSUCCESS;
		} else {
			for (int i = 0; i < size; i += 2) {
				Data[i / 2] = ((transferBuffer.get(i + 0) & 0xFF))
						+ ((transferBuffer.get(i + 1) & 0xFF) << 8);
			}

			if (Data[0] == 0x5A5A) {
				returnValue = hybrid.HN_SUCCESS;
			} else {
				returnValue = hybrid.HN_NOT_UPDATED;
			}
		}

		return returnValue;
	}
}

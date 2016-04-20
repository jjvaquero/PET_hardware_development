package com.hamamatsu.radiationdetector;

import javax.microedition.khronos.opengles.GL10;

import android.hardware.usb.UsbDeviceConnection;

public class Global {
	// USB接続状況を保持
	public static UsbDeviceConnection UsbConnection;

	// GLコンテキストを保持
	public static GL10 gl;

	// 動作パラメータ
	public static int AreaDataSize = 30;
	public static int LogInterval = 60;
	public static double NumericUpDownComparator = 20.0;
	public static int LowerEnergyLimit = 1;
	public static double AreaStart = 30.0;
	public static double AreaEnd = 2000.0;
	public static double BaseSievert = 1000.0;
	public static float LogListX[];
	public static double BaseEnergy = 1.0;
	public static int ListXFlg = 0;
}
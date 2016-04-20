package com.hamamatsu.radiationdetector;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

import com.hamamatsu.radiationdetector.file.FileListDialog;
import com.hamamatsu.radiationdetector.file.FileListDialog.onFileListDialogListener;
import com.hamamatsu.radiationdetector.file.csvReadWrite;
import com.hamamatsu.radiationdetector.graph.MyRenderer;
import com.hamamatsu.radiationdetector.rdmusb.C12137;
import com.hamamatsu.radiationdetector.rdmusb.hybrid;

import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbConstants;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

public class RadiationDetectorActivity extends Activity implements
		OnTouchListener, ActionBar.TabListener, OnGestureListener,
		OnDoubleTapListener, onFileListDialogListener {
	static final String TAG = "RadiationDetectorActivity";

	static final int VENDOR_ID = 1633;
	static final int PRODUCT_ID = 10519;

	static final int LOG_SAVE_BTN = 0;
	static final int MENU_SAVE_BTN = 1;

	static final long REMAIN_SIZE_LIMIT = 1073741824L; // 1GByte =
														// 1073741824Byte

	// private static final String TAB[] = { "tag1", "tag2", "tag3", };
	// private static final String TABLABEL[] = { "エネルギー", "時間変化", "頻度分布", };

	private static final int GRAPH_ARRAY_ELEMENT_COUNT = 201;
	static final int DATA_ARRAY_ELEMENT_COUNT = 4096;

	/*** ***/
	private Handler mHandler;
	private Tab[] mActionBarTab;
	private Timer mTimer;
	private GestureDetector mGestureDetector;
	private int mModuleType = 0;
	private double[] mCoeffX;
	private double[] mCoeffY;
	private MyRenderer mRenderer;
	private Handler mHnd = new Handler();
	private int mCountRate = 0; // カウントレート表示用変数
	private double mTemp = 0; // 温度表示用変数
	private String mSvValue = "0.000"; // 数値（シーベルト）表示用変数
	private String mSvUnit = "μSv/h"; // 単位（シーベルト）表示用変数
	// private boolean mCreateCount = false; // USBを挿入しての起動判定
	private int mSaveBtnDetermination = LOG_SAVE_BTN; // フォルダ選択ダイアログリスナーでのログ保存ボタンの判別に使用
	private boolean mLogWrite = false; // ログ保存を行うかどうかの判定
	// private boolean mActivityMode = false; //
	// 設定画面の選択　true：Debugモード　false：Normalモード
	// private boolean mStorageSelect = false; //
	// 内部ストレージボタンと外部ストレージボタンの押下判定　true：外部　false：内部

	/*** UI ***/
	// private ImageButton mIbtnMeasStart;
	// private ImageButton mIbtnMeasStop;
	// private ImageButton mIbtnMeasLog;
	// private ImageButton mIbtnSetting;
	// private ImageButton mIbtnEndApp;
	private GLSurfaceView mGlSurfaceView;
	private TextView mViCountRate;
	// private TextView mViRange;
	// private TextView mViDegree;
	private TextView mViSievert;
	private TextView mViSievertUnit;
	private TextView mViFps;
	private LinearLayout mLayGL;

	/*** USB ***/
	private UsbManager mUsbManager;
	private UsbDevice mUsbDevice;
	private UsbDeviceConnection mUsbConnection;
	private UsbEndpoint mUsbBULKEpIN;
	private UsbEndpoint mUsbBULKEpOUT;

	/*** データ保存用配列 ***/
	private int[] HistSave = new int[65535];
	private int[] HistGraph = new int[DATA_ARRAY_ELEMENT_COUNT];
	private int NumberOfHistogram;

	/*** ロググラフ用の配列 ***/
	public float[] ListX = new float[DATA_ARRAY_ELEMENT_COUNT];
	public float[] ListY = new float[DATA_ARRAY_ELEMENT_COUNT];

	/*** 放射線量表示用配列 ***/
	public int[][] LogData = new int[513][DATA_ARRAY_ELEMENT_COUNT];
	public int LogIndex;
	public int LogSize;
	public float[] LogCorrection = new float[DATA_ARRAY_ELEMENT_COUNT];
	public float[] LogListX = new float[DATA_ARRAY_ELEMENT_COUNT];
	public int LogInterval = 60;

	public float[] AxisX = new float[GRAPH_ARRAY_ELEMENT_COUNT];
	public float[] AxisY = new float[GRAPH_ARRAY_ELEMENT_COUNT];
	public float AxisX_Min = 0;
	public float AxisX_Max = GRAPH_ARRAY_ELEMENT_COUNT - 1;
	public float AxisY_Min = 0;
	public float AxisY_Max = 0;
	private int AxisCounter = 0;
	private int UnitFlg = 0;
	// グラフのμSv/hとmSv/h表示を切り替えるために、μSv/h単位の値を格納しておく
	private float[] AxisY_Raw = new float[GRAPH_ARRAY_ELEMENT_COUNT];
	private float AxisY_Max_Raw = 0;

	/*** メイングラフのオプション ***/
	private double AreaStart = 40; // カーソルの位置
	private double AreaEnd = 2000; // カーソルの位置
	private int AreaDataSize = 30; // シーベルト(Sievert)変換の母数

	// データ保存先のパス
	private String InnerStoragePath = "";
	// private String OuterStoragePath;
	// private String InnerStoragePathDefault;
	// private String OuterStoragePathDefault;
	private String SaveFilePath;
	private String SaveFileNameLog;
	private int SaveEventCount = 0; // エネルギースペクトル保存間隔確認用
	private Date dt; // Dateオブジェクト用変数
	private SimpleDateFormat sdf; // SimpleDateFormatオブジェクト用変数

	/*** カウント値からシーベルトへ変換するための係数（初期値） ***/
	public double BaseSievert = 1000;
	public int LowerEnergyLimit = 1;
	public double NumericUpDownComparator = 20;
	/*** カウントレートを計算する ***/
	private int CountRate = 0;
	/*** 横軸をエネルギー値(keV)に変換するための係数 ***/
	private double BaseEnergy;

	/*** 測定開始後の100msタイマのイベント数 ***/
	private int TimerEventCount = 0;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		getWindow().requestFeature(Window.FEATURE_ACTION_BAR);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		setContentView(R.layout.main);

		Log.d(TAG, "start onCreate");

		mHandler = new Handler();
		mGestureDetector = new GestureDetector(this, this);
		// mCoeffX = new double[coeffx.length];
		// mCoeffY = new double[coeffy.length];
		mUsbManager = (UsbManager) getSystemService(Context.USB_SERVICE);

		// TEXT
		mViCountRate = (TextView) findViewById(R.id.viCountRate);
		// mViRange = (TextView) findViewById(R.id.viRange);
		// mViDegree = (TextView) findViewById(R.id.viDegree);
		mViSievert = (TextView) findViewById(R.id.viSievert);
		mViSievertUnit = (TextView) findViewById(R.id.viSievertUnit);
		// mViFps = (TextView) findViewById(R.id.viFps);

		// BUTTON
		// mIbtnMeasStart = (ImageButton) findViewById(R.id.ibtnMeasStart);
		// mIbtnMeasStart.setOnClickListener(this);
		// mIbtnMeasStop = (ImageButton) findViewById(R.id.ibtnMeasStop);
		// mIbtnMeasStop.setOnClickListener(this);
		// mIbtnMeasLog = (ImageButton) findViewById(R.id.ibtnMeasLog);
		// mIbtnMeasLog.setOnClickListener(this);
		// mIbtnSetting = (ImageButton) findViewById(R.id.ibtnSetting);
		// mIbtnSetting.setOnClickListener(this);
		// mIbtnEndApp = (ImageButton) findViewById(R.id.ibtnEndApp);
		// mIbtnEndApp.setOnClickListener(this);

		// ActionBarTab設定
		final ActionBar bar = getActionBar();
		mActionBarTab = new Tab[3];
		mActionBarTab[0] = bar.newTab().setText(R.string.tab_text_1)
				.setTabListener(this);
		mActionBarTab[1] = bar.newTab().setText(R.string.tab_text_2)
				.setTabListener(this);
		bar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);
		bar.addTab(mActionBarTab[0]);
		bar.addTab(mActionBarTab[1]);
		bar.setDisplayShowTitleEnabled(false);
		bar.setDisplayShowHomeEnabled(false);

		// GL Graph
		mRenderer = new MyRenderer();
		mRenderer.setPlotMode(MyRenderer.PLOT_MODE_ENERGY);
		mGlSurfaceView = new GLSurfaceView(this);
		mGlSurfaceView.setRenderer(mRenderer);
		mLayGL = (LinearLayout) findViewById(R.id.linLayGraph);
		mLayGL.addView(mGlSurfaceView);
		mLayGL.setOnTouchListener(this);

		SetReturnValue();
		// mActivityMode = false;
	}

	@Override
	protected void onResume() {
		super.onResume();

		GetReturnValue();

		Intent intent = getIntent();
		String action = intent.getAction();
		UsbDevice device = (UsbDevice) intent
				.getParcelableExtra(UsbManager.EXTRA_DEVICE);
		if (UsbManager.ACTION_USB_DEVICE_ATTACHED.equals(action)) {
			setDevice(device);
		} else if (UsbManager.ACTION_USB_DEVICE_DETACHED.equals(action)) {
			if (mUsbDevice != null & mUsbDevice.equals(device)) {
				setDevice(null);
			}
		} else {
			// 接続中のUSB機器から検索する
			HashMap<String, UsbDevice> deviceList = mUsbManager.getDeviceList();
			Iterator<UsbDevice> deviceIterator = deviceList.values().iterator();
			while (deviceIterator.hasNext()) {
				device = deviceIterator.next();
				if (device.getVendorId() == VENDOR_ID
						&& device.getProductId() == PRODUCT_ID) {
					setDevice(device);
				}
			}
		}

		// エラーメッセージの表示
		if (mUsbConnection == null) {
			AlertDialog.Builder dlg = new AlertDialog.Builder(this);
			dlg.setTitle(getString(R.string.ERROR_DEVICE_DIALOG_TITLE));
			dlg.setIcon(android.R.drawable.ic_delete);
			dlg.setMessage(getString(R.string.ERROR_DEVICE_DIALOG_MESSAGE));
			dlg.setPositiveButton("OK", new DialogInterface.OnClickListener() {
				
				public void onClick(DialogInterface dialog, int which) {
					finish();
				}
			});
			dlg.setCancelable(false);
			AlertDialog alertDlg = dlg.create();
			alertDlg.show();
		}

		// デバイス取り外しレシーバー登録
		IntentFilter filter = new IntentFilter();
		filter.addAction(UsbManager.ACTION_USB_DEVICE_DETACHED);
		registerReceiver(mBroadcastReceiver, filter);

		// モジュール内部に保存されている情報を読み出す
		LoadModuleEepromInfo();
		SetReturnValue();

		// if (mCreateCount == false) {
		// 起動時イニシャライズ処理
		InitializeForm();

		// StartActivity();

		// mCreateCount = true;
		// }
	}

	@Override
	protected void onPause() {
		super.onPause();

		unregisterReceiver(mBroadcastReceiver);
	}

	@Override
	protected void onStop() {
		super.onStop();

		// finish();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();

		// タイマーの停止処理
		measStop();

		// USBマネージャの破棄
		// mCreateCount = false;
		mUsbConnection = null;
		Global.UsbConnection = null;
		mUsbManager = null;
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);

	}

	@Override
	protected void onRestoreInstanceState(Bundle savedInstanceState) {
		super.onRestoreInstanceState(savedInstanceState);

	}

	
	public boolean onTouch(View v, MotionEvent event) {
		mGestureDetector.onTouchEvent(event);
		return true;
	}

	public boolean onDoubleTap(MotionEvent e) {
		mRenderer.ChangeScale();
		return false;
	}

	public boolean onDoubleTapEvent(MotionEvent e) {
		// TODO 自動生成されたメソッド・スタブ
		return false;
	}

	public boolean onSingleTapConfirmed(MotionEvent e) {
		// TODO 自動生成されたメソッド・スタブ
		return false;
	}

	public boolean onDown(MotionEvent e) {
		// TODO 自動生成されたメソッド・スタブ
		return false;
	}

	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		final ActionBar bar = getActionBar();

		if (e1.getX() < e2.getX()) {
			mRenderer.setPlotMode(MyRenderer.PLOT_MODE_ENERGY);
			bar.selectTab(mActionBarTab[0]);
		} else {
			mRenderer.setPlotMode(MyRenderer.PLOT_MODE_TIME);
			bar.selectTab(mActionBarTab[1]);
		}

		return true;
	}

	public void onLongPress(MotionEvent e) {
		// TODO 自動生成されたメソッド・スタブ

	}

	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
			float distanceY) {
		// TODO 自動生成されたメソッド・スタブ
		return false;
	}

	public void onShowPress(MotionEvent e) {
		// TODO 自動生成されたメソッド・スタブ
	}


	public boolean onSingleTapUp(MotionEvent e) {
		// TODO 自動生成されたメソッド・スタブ
		return false;
	}


	public void onTabReselected(Tab tab, FragmentTransaction ft) {
		// TODO 自動生成されたメソッド・スタブ
	}


	public void onTabSelected(Tab tab, FragmentTransaction ft) {
		if (mRenderer == null) {
			return;
		}

		if (tab.getText().equals(getString(R.string.tab_text_1))) {
			mRenderer.setPlotMode(MyRenderer.PLOT_MODE_ENERGY);
		}
		if (tab.getText().equals(getString(R.string.tab_text_2))) {
			mRenderer.setPlotMode(MyRenderer.PLOT_MODE_TIME);
		}
		// if (tab.getText().equals(getString(R.string.tab_text_3))) {
		//
		// }

	}


	public void onTabUnselected(Tab tab, FragmentTransaction ft) {
		// TODO 自動生成されたメソッド・スタブ
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {

		MenuItem startItem = menu.add(R.string.menu_title_text_start);
		startItem.setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
		startItem.setIcon(android.R.drawable.ic_media_play);

		MenuItem logItem = menu.add(R.string.menu_title_text_log);
		logItem.setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
		logItem.setIcon(android.R.drawable.presence_invisible);

		MenuItem pauseItem = menu.add(R.string.menu_title_text_pause);
		pauseItem.setShowAsAction(MenuItem.SHOW_AS_ACTION_ALWAYS);
		pauseItem.setIcon(android.R.drawable.ic_media_pause);

		MenuItem menuItem = menu.add(R.string.menu_title_text_setting);
		menuItem.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM);
		menuItem.setIcon(android.R.drawable.ic_menu_manage);

		MenuItem saveItem = menu.add(R.string.menu_title_text_save);
		saveItem.setShowAsAction(MenuItem.SHOW_AS_ACTION_IF_ROOM);
		saveItem.setIcon(android.R.drawable.ic_menu_save);

		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		if (item.getTitle().equals(getString(R.string.menu_title_text_start))) {
			StartInit();
			mLogWrite = false;
			measStart();
		}
		if (item.getTitle().equals(getString(R.string.menu_title_text_log))) {
			// 内部パスがある場合
			if (!InnerStoragePath.equals("")) {
				// ストレージの残容量確認
				StatFs fs = new StatFs(InnerStoragePath);
				long bkSize = fs.getBlockSize();
				long avaBlocks = fs.getAvailableBlocks();
				long remainSize = bkSize * avaBlocks;

				if (remainSize < REMAIN_SIZE_LIMIT) // ストレージの残容量が1GB未満の場合、保存しない
				{
					StorageSizeErrorDialog(false);
				} else {
					mSaveBtnDetermination = LOG_SAVE_BTN;
					// StorageSelectDialog(true);
					FolderSelectDialog2(InnerStoragePath,
							FileListDialog.DIALOG_MODE_SELECT_DIR);
				}
			} else {
				StorageErrorDialog();
			}
		}
		if (item.getTitle().equals(getString(R.string.menu_title_text_pause))) {
			measStop();
		}
		if (item.getTitle().equals(getString(R.string.menu_title_text_setting))) {
			StartActivity();
		}
		if (item.getTitle().equals(getString(R.string.menu_title_text_save))) {
			if (!InnerStoragePath.equals("")) // 内部パスがある場合
			{
				// ストレージの残容量確認
				StatFs fs = new StatFs(InnerStoragePath);
				long bkSize = fs.getBlockSize();
				long avaBlocks = fs.getAvailableBlocks();
				long remainSize = bkSize * avaBlocks;

				// ストレージの残容量が1GB未満の場合、保存しない
				if (remainSize < REMAIN_SIZE_LIMIT) {
					StorageSizeErrorDialog(false);
				} else {
					mSaveBtnDetermination = MENU_SAVE_BTN;
					// StorageSelectDialog(true);
					FolderSelectDialog2(InnerStoragePath,
							FileListDialog.DIALOG_MODE_SELECT_DIR);
				}
			} else {
				StorageErrorDialog();
			}

			return false;
		}

		return super.onOptionsItemSelected(item);
	}


	public void onClickFileList(File file) {
		switch (mSaveBtnDetermination) {
		case LOG_SAVE_BTN:
			// csvファイル名の生成
			dt = new Date(); // Dateオブジェクトを生成
			sdf.applyPattern("yyyyMMdd_HHmmss"); // フォーマットパターンを変更

			// ChangeFolderDetermination(file);
			// StoredFolder();

			ChangeFolderDetermination2(file);

			SaveFileNameLog = SaveFilePath + "/" + sdf.format(dt) + ".csv";

			StartInit();
			mLogWrite = true;
			measStart();
			break;
		case MENU_SAVE_BTN:
			dt = new Date(); // Dateオブジェクトを生成
			sdf.applyPattern("yyyyMMddHHmmss"); // フォーマットパターンを変更

			// ChangeFolderDetermination(file);
			// StoredFolder();

			ChangeFolderDetermination2(file);

			String filename = SaveFilePath + "/" + sdf.format(dt) + ".csv";
			menuSaveDataBuildWrite(filename, HistGraph);

			filename = SaveFilePath + "/" + sdf.format(dt) + "_D.csv";
			menuSaveDataBuildWrite(filename, HistSave);
			break;
		default:
			break;
		}
	}

	private void ChangeFolderDetermination2(File file) {
		// フォルダを変更しない場合を考慮
		if (file == null) // フォルダを変更しない場合
		{
			SaveFilePath = InnerStoragePath;
		} else // フォルダを変更した場合
		{
			SaveFilePath = file.getPath();
		}
	}

	private void FolderSelectDialog2(String path, int mode) {
		FileListDialog dlg = new FileListDialog(this);
		dlg.setDialogMode(mode);
		dlg.setDefultPath(path);
		dlg.setOnFileListDialogListener((onFileListDialogListener) this);
		dlg.show(path, path);
	}

	private void StorageErrorDialog() {
		AlertDialog.Builder FolderErrorBuilder = new AlertDialog.Builder(this);
		FolderErrorBuilder.setTitle(getString(R.string.storage_error_title));

		FolderErrorBuilder.setNegativeButton("キャンセル",
				new DialogInterface.OnClickListener() {
			
					public void onClick(DialogInterface dialog, int which) {

					}
				});

		FolderErrorBuilder.setCancelable(true);
		AlertDialog FolderError = FolderErrorBuilder.create();
		FolderError.show();
	}

	private void StorageSizeErrorDialog(boolean measflg) {
		AlertDialog.Builder StorageSizeErrorBuilder = new AlertDialog.Builder(
				this);
		if (measflg == true) // 計測停止
		{
			StorageSizeErrorBuilder
					.setTitle(getString(R.string.ERROR_STORAGE_SIZE_DIALOG_MESSAGE));
		} else {
			StorageSizeErrorBuilder
					.setTitle(getString(R.string.ERROR_STORAGE_SIZE_CANCEL_DIALOG_MESSAGE));
		}

		StorageSizeErrorBuilder.setPositiveButton("OK",
				new DialogInterface.OnClickListener() {
				
					public void onClick(DialogInterface dialog, int which) {

					}
				});

		StorageSizeErrorBuilder.setCancelable(false);
		AlertDialog StorageSizeError = StorageSizeErrorBuilder.create();
		StorageSizeError.show();
	}

	private void StartActivity() {
		SetReturnValue();

		Intent intent = new Intent(RadiationDetectorActivity.this,
				SettingListActivity.class);
		startActivity(intent);
	}

	private void SetReturnValue() {
		Global.AreaDataSize = AreaDataSize;
		Global.LogInterval = LogInterval;
		Global.NumericUpDownComparator = NumericUpDownComparator;
		Global.LowerEnergyLimit = LowerEnergyLimit;
		Global.AreaStart = AreaStart;
		Global.AreaEnd = AreaEnd;
		Global.BaseSievert = BaseSievert;
		Global.LogListX = LogListX;
		Global.BaseEnergy = BaseEnergy;
	}

	private void GetReturnValue() {
		AreaDataSize = Global.AreaDataSize;
		LogInterval = Global.LogInterval;
		NumericUpDownComparator = Global.NumericUpDownComparator;
		LowerEnergyLimit = Global.LowerEnergyLimit;
		AreaStart = Global.AreaStart;
		AreaEnd = Global.AreaEnd;
		BaseSievert = Global.BaseSievert;
		LogListX = Global.LogListX;
		BaseEnergy = Global.BaseEnergy;
		int ListXFlg = Global.ListXFlg;
		if (ListXFlg != 0) {
			float[] tmp = Global.LogListX;
			for (int i = 0; i < DATA_ARRAY_ELEMENT_COUNT; i++) {
				ListX[i] = tmp[i];
			}
		}

		UpdateCursorPosition(AreaStart, AreaEnd);
	}

	private void measStart() {
		// 計測中の場合リスタートする
		measStop();

		if (mUsbConnection != null) {
			StartInit();
			mTimer = new Timer();
			mTimer.schedule(new TimerTask() {
				@Override
				public void run() {
					DataUpdata2();
					// final String strTemp = String.format("%.1f", mTemp) +
					// "[℃]";
					final String strCountRate = String.valueOf(mCountRate)
							+ "cps";
					final String strSvValue = mSvValue;
					final String strSvUnit = mSvUnit;
					mHnd.post(new Runnable() {
						
						public void run() {
							// テキスト表示
							// mViDegree.setText(strTemp);
							mViCountRate.setText(strCountRate);
							mViSievert.setText(strSvValue);
							mViSievertUnit.setText(strSvUnit);
						}
					});
				}
			}, 100, 100);
		}
	}

	private void measStop() {
		// タイマーの停止処理
		if (mTimer != null) {
			mTimer.cancel();
			mTimer = null;
		}
	}

	private void menuSaveDataBuildWrite(String filename, int[] data) {
		// メニューボタンでのデータ保存
		// 書き込むデータの作成
		String[][] recData = new String[data.length][2];
		for (int i = 0; i < data.length; i++) {
			recData[i][0] = String.valueOf(i);
			recData[i][1] = String.valueOf(data[i]);
		}
		// データの書き込み
		csvReadWrite.write(filename, recData);
	}

	/*
	 * デバイス登録
	 */
	private void setDevice(UsbDevice device) {
		if (device.getInterfaceCount() < 1) {
			return;
		}

		UsbInterface intf = device.getInterface(0);
		if (intf.getEndpointCount() < 1) {
			return;
		}

		for (int i = 0; i < intf.getEndpointCount(); i++) {
			UsbEndpoint ep = intf.getEndpoint(i);
			switch (ep.getType()) {
			case UsbConstants.USB_ENDPOINT_XFER_CONTROL:
			case UsbConstants.USB_ENDPOINT_XFER_INT:
			case UsbConstants.USB_ENDPOINT_XFER_ISOC:
				break;
			case UsbConstants.USB_ENDPOINT_XFER_BULK:
				if (ep.getDirection() == UsbConstants.USB_DIR_OUT) {
					mUsbBULKEpOUT = ep;
				} else {
					mUsbBULKEpIN = ep;
				}
				break;
			default:
				break;
			}
		}

		mUsbDevice = device;
		if (device != null) {
			UsbDeviceConnection connection = mUsbManager.openDevice(device);
			if (connection != null && connection.claimInterface(intf, true)) {
				mUsbConnection = connection;
			} else {
				mUsbConnection = null;
			}
		}

		Global.UsbConnection = mUsbConnection;
	}

	private void LoadModuleEepromInfo() {
		// モジュール内部に保存されている情報を読み出す
		int[] data = new int[1];
		String[] strData = new String[1];

		C12137.RdmUsb_ReadEepromString(mUsbConnection, 32, strData);
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 28, data);
		if (strData[0]
				.equals(getString(R.string.EEPROM_PRODUCT_NAME_C12137_01))) {
			mCoeffX = Gf_C12137_01.KeV;
			mCoeffY = Gf_C12137_01.raw;
		} else {
			if (data[0] == 1) {
				mCoeffX = Gf_C12137_1.KeV;
				mCoeffY = Gf_C12137_1.raw;
			} else {
				mCoeffX = Gf_C12137.KeV;
				mCoeffY = Gf_C12137.raw;
			}
		}

		// 動作モード
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 0, data);
		if (data[0] == 0) {
			// 自動補正
		} else {
			// 外部制御
		}

		// 温度補償係数
		// 係数T
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 2, data);
		// 係数A
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 4, data);
		// 係数B
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 6, data);
		// 係数C
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 8, data);

		// 起動時コンパレータ設定値
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 10, data);
		if (data[0] > 4095) {
			data[0] = 4095;
		}

		// エネルギー変換指定範囲（下限）
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 12, data);
		if (data[0] > 4095) {
			data[0] = 4095;
		}
		AreaStart = (double) data[0];

		// エネルギー変換指定範囲（上限）
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 14, data);
		if (data[0] > 4095) {
			data[0] = 4095;
		}
		AreaEnd = (double) data[0];

		// uSv/h変換係数
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 16, data);
		BaseSievert = (double) data[0];

		// ADC⇒エネルギー変換値
		C12137.RdmUsb_ReadEeprom(mUsbConnection, 18, data);
		BaseEnergy = (double) data[0] / 1000;
	}

	private void InitializeForm() {
		// 内部ストレージのパスを取得
		InnerStoragePath = Environment.getExternalStorageDirectory().toString(); // APIで取得（タブレットの場合は内部ストレージ）
		File outDir = new File(InnerStoragePath);

		if (outDir.exists()) // 内部ストレージのパスがある場合
		{
			// 内部にパッケージ名のフォルダを作成する
			InnerStoragePath = InnerStoragePath + "/" + this.getPackageName();
			outDir = new File(InnerStoragePath);
			// パッケージ名のディレクトリがなければ作成する
			try {
				if (!outDir.exists()) {
					// パッケージ名のディレクトリが存在しない場合新規作成
					outDir.mkdir();
				}
			} catch (SecurityException ex) {
				// 例外発生時の処理
			}
		} else { // 内部ストレージのパスがない場合
			InnerStoragePath = ""; // 内部パスを空白にする
		}

		// 読み込むCSVファイルの指定（内部ストレージ固定）
		if (InnerStoragePath.equals("")) // 内部ストレージのパスがない場合
		{
			// 補正係数の読込
			for (int i = 0; i < mCoeffX.length; i++) {
				LogListX[i] = (float) mCoeffX[i];
				LogCorrection[i] = (float) mCoeffY[i];
			}
		} else { // 内部ストレージのパスがある場合
			String sPath = InnerStoragePath + "/energy.csv";
			outDir = new File(sPath);

			if (!outDir.exists()) { // ファイルがない場合
				// 補正係数の読込
				for (int i = 0; i < mCoeffX.length; i++) {
					LogListX[i] = (float) mCoeffX[i];
					LogCorrection[i] = (float) mCoeffY[i];
				}
			} else { // ファイルがある場合
				// ファイルから読み込み
				String[][] rec = new String[DATA_ARRAY_ELEMENT_COUNT][2];
				rec = csvReadWrite.read(sPath);

				// 補正係数の読込
				for (int i = 0; i < rec.length; i++) {
					LogListX[i] = Float.parseFloat(rec[i][0]);
					LogCorrection[i] = Float.parseFloat(rec[i][1]);
				}
			}
		}

		for (int i = 0; i < DATA_ARRAY_ELEMENT_COUNT; i++) {
			ListX[i] = LogListX[i];
			ListY[i] = 0.1f;
		}

		UpdateCursorPosition(AreaStart, AreaEnd);

		// 取得データ配列（グラフ描画用）初期化処理
		NumberOfHistogram = 0;
		LogIndex = 0;
		LogSize = 0;

		// ログファイル処理用
		// Dateオブジェクトを生成
		dt = new Date();
		// SimpleDateFormatオブジェクトを生成
		sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	}

	private void StartInit() {
		// 空読みをしてファーム内のデータを更新
		int result;
		int[] buffer = new int[1048];
		int[] size = new int[1];
		float[] temperature = new float[1];

		// モジュールから取得済み最新データと温度情報を取得
		result = hybrid.HN_GetDataAndTemperature(mUsbConnection, mUsbBULKEpIN,
				size, buffer, temperature);
		// モジュールから取得済み最新データと温度情報を取得
		result = hybrid.HN_GetDataAndTemperature(mUsbConnection, mUsbBULKEpIN,
				size, buffer, temperature);

		// 取得済みデータをクリア
		for (int i = 0; i < HistSave.length; i++) {
			HistSave[i] = 0;
		}
		for (int i = 0; i < HistGraph.length; i++) {
			HistGraph[i] = 0;
		}
		LogIndex = 0;
		LogSize = 0;
		for (int i = 0; i < LogData.length; i++) {
			for (int j = 0; j < LogData[i].length; j++) {
				LogData[i][j] = 0;
			}
		}

		NumberOfHistogram = 0;

		try {
			Thread.sleep(200);
		} catch (InterruptedException e) {
		}

		// 計測用タイマ起動
		TimerEventCount = 1;
		CountRate = 0;

		// グラフ表示用変数クリア
		for (int i = 0; i < 201; i++) {
			AxisX[i] = 0;
			AxisY[i] = 0;
			AxisY_Raw[i] = 0;
		}
		AxisX_Min = 0;
		AxisX_Max = GRAPH_ARRAY_ELEMENT_COUNT - 1;
		AxisY_Min = 0;
		AxisY_Max = 0;
		AxisCounter = 0;
		UnitFlg = 0;
		AxisY_Max_Raw = 0;

		// エネルギースペクトル保存間隔確認用変数クリア
		SaveEventCount = 0;
	}

	private void CreateChartMainAndChartEnergy() {
		// エネルギー分布グラフ
		for (int i = 0; i < DATA_ARRAY_ELEMENT_COUNT; i++) {
			ListY[i] = HistGraph[i];
		}

		// グラフ描画の方でＹ軸スケールを決定する

		// グラフ描画
		mRenderer.setEnergyXVertices(ListX);
		mRenderer.setEnergyYVertices(ListY);
	}

	public void UpdateCursorPosition(double posStart, double posEnd) {
		// カーソル位置から範囲を規定
		// 最大、最小が入れ替わることを回避するために判定する

		if (posStart < posEnd) {
			AreaStart = posStart;
			AreaEnd = posEnd;
		} else {
			AreaStart = posEnd;
			AreaEnd = posStart;
		}

		// mViRange.setText(String.valueOf(AreaStart) + " ～ "
		// + String.valueOf(AreaEnd));
	}

	public void DataUpdata2() {
		int result;
		int[] buffer = new int[1048];
		int[] size = new int[1];
		int[] index = new int[1];
		float[] temperature = new float[1];
		int addr;
		float ans;
		int address;

		// 取得済み配列を初期化
		// モジュールから取得済み最新データと温度情報を取得
		result = C12137.RdmUsb_GetDacDataAndTemperature(mUsbConnection,
				mUsbBULKEpIN, size, buffer, index, temperature);
		// 取得に失敗した場合、再度データ要求
		if (result == hybrid.HN_NOT_UPDATED) {
			for (int i = 0; i < buffer.length; i++) {
				buffer[i] = 0;
			}
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
			}
			result = C12137.RdmUsb_GetDacDataAndTemperature(mUsbConnection,
					mUsbBULKEpIN, size, buffer, index, temperature);
		}
		// 戻値を確認。成功した場合のみ処理を継続する
		if (result != hybrid.HN_SUCCESS) {
			return;
		}

		// 取得データをグラフ描画用に加工
		if (size[0] != 0) {
			// ヒストグラムの総取得数を更新
			NumberOfHistogram += size[0];
			// カウントレート計算用変数更新
			CountRate += size[0];
			for (int i = 0; i < size[0]; i++) {
				// 保存用データの作成
				addr = buffer[i];
				HistSave[addr] += 1;
				// 頻度グラフデータの作成（1/16圧縮）
				address = addr >> 4;
				HistGraph[address] += 1;
				// 移動平均計算用配列作成
				LogData[512][address] += 1;
			}
		}

		// 温度表示を更新
		mTemp = temperature[0];

		// 取得に成功したのでイベント数加算
		TimerEventCount += 1;

		// [エネルギー]グラフ作成
		CreateChartMainAndChartEnergy();

		// '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

		// 放射線量時間変化
		int cnt = TimerEventCount % 10;
		if (cnt == 0) {
			// カウントレートを計算して表示(上限10Kcps)
			if (CountRate > 10000) {
				CountRate = 10000;
			}

			// カウントレート表示
			mCountRate = CountRate;

			// 移動平均を作る配列の生成と更新
			for (int i = 0; i < DATA_ARRAY_ELEMENT_COUNT; i++) {
				LogData[LogIndex][i] = LogData[512][i];
				LogData[LogIndex + 256][i] = LogData[512][i];
				LogData[512][i] = 0;
			}
			LogIndex += 1;
			LogIndex = LogIndex & 0xFF;
			LogSize += 1;

			// カウントレートからシーベルト単位へ
			ans = CountToSievert4();

			CountRate = 0;

			// 時系列チャートの作成
			int idx = TimerEventCount / 10;

			// x axis
			if (idx <= GRAPH_ARRAY_ELEMENT_COUNT - 1) {
				AxisX_Min = 0;
				AxisX_Max = GRAPH_ARRAY_ELEMENT_COUNT - 1;
			} else {
				AxisX_Min = idx - (GRAPH_ARRAY_ELEMENT_COUNT - 1);
				AxisX_Max = idx;
			}

			if (AxisCounter > GRAPH_ARRAY_ELEMENT_COUNT - 1) {
				// 配列の要素を１つずらす
				for (int i = 0; i < GRAPH_ARRAY_ELEMENT_COUNT - 1; i++) {
					AxisX[i] = AxisX[i + 1];
					AxisY_Raw[i] = AxisY_Raw[i + 1];
				}
			}

			// (GRAPH_ARRAY_ELEMENT_COUNT - 1)以上は(GRAPH_ARRAY_ELEMENT_COUNT -
			// 1)で固定
			if (AxisCounter > GRAPH_ARRAY_ELEMENT_COUNT - 1) {
				AxisCounter = GRAPH_ARRAY_ELEMENT_COUNT - 1;
			}

			// グラフ用変数へ代入
			AxisX[AxisCounter] = idx;
			// グラフ用変数（μSv/h単位）へ代入
			AxisY_Raw[AxisCounter] = ans;

			// y軸（μSv/h単位）の最大値を求める
			float[] tmp = new float[GRAPH_ARRAY_ELEMENT_COUNT];
			for (int i = 0; i < GRAPH_ARRAY_ELEMENT_COUNT; i++) {
				tmp[i] = AxisY_Raw[i];
			}
			Arrays.sort(tmp);
			AxisY_Max_Raw = tmp[GRAPH_ARRAY_ELEMENT_COUNT - 1];

			// グラフ表示をuSv/hとmSv/hの表示に対応する
			if (AxisY_Max_Raw < 1000) {
				// グラフ用変数へ代入
				for (int i = 0; i < GRAPH_ARRAY_ELEMENT_COUNT; i++) {
					AxisY[i] = AxisY_Raw[i];
				}
				AxisY_Max = AxisY_Max_Raw;
				UnitFlg = 0;
			} else {
				// mSv/hへ変換してグラフ用変数へ代入
				for (int i = 0; i < GRAPH_ARRAY_ELEMENT_COUNT; i++) {
					AxisY[i] = AxisY_Raw[i] / 1000f;
				}
				AxisY_Max = AxisY_Max_Raw / 1000f;
				UnitFlg = 1;
			}

			// uSv/hとmSv/hの表示に対応する
			if (ans < 1000) {
				mSvValue = String.format("%.3f", ans);
				mSvUnit = "μSv/h";
			} else {
				mSvValue = String.format("%.3f", ans / 1000f);
				mSvUnit = "mSv/h";
			}

			// グラフ表示
			mRenderer.setState(UnitFlg);
			mRenderer.setTimeXVertices(AxisX, AxisX_Max, AxisX_Min);
			mRenderer.setTimeYVertices(AxisY, AxisY_Max);

			AxisCounter += 1;

			// ログ保存
			if (mLogWrite == true) {
				String filename;
				int k;

				// ストレージの残容量確認
				StatFs fs = new StatFs(InnerStoragePath);
				long bkSize = fs.getBlockSize();
				long avaBlocks = fs.getAvailableBlocks();
				long remainSize = bkSize * avaBlocks;

				if (remainSize < REMAIN_SIZE_LIMIT) // ストレージの残容量が1GB未満の場合、計測停止
				{
					measStop(); // 計測停止
					mHandler.post(new Runnable() {
						
						public void run() {
							StorageSizeErrorDialog(true);
						}
					});
				} else {
					SaveEventCount += 1; // エネルギースペクトル保存間隔確認用

					// uSv/Hログ
					k = AreaDataSize;
					if (SaveEventCount % k == 0) {
						dt = new Date(); // Dateオブジェクトを生成
						sdf.applyPattern("HH:mm:ss"); // フォーマットパターンを変更
						// 書き込むデータの作成
						String[][] recData = new String[1][2];
						recData[0][0] = sdf.format(dt);
						recData[0][1] = String.valueOf(ans);
						// データの書き込み
						csvReadWrite.write(SaveFileNameLog, recData);
					}

					k = LogInterval;
					if (k != 0) {
						if (SaveEventCount % k == 0) {
							dt = new Date(); // Dateオブジェクトを生成
							sdf.applyPattern("yyyyMMdd_HHmmss"); // フォーマットパターンを変更
							filename = SaveFilePath + "/" + sdf.format(dt)
									+ "_Spectrum.csv";
							String[][] recData = new String[DATA_ARRAY_ELEMENT_COUNT][2];
							// 書き込むデータの作成
							for (int i = 0; i < DATA_ARRAY_ELEMENT_COUNT; i++) {
								recData[i][0] = String.valueOf(LogListX[i]);
								recData[i][1] = String.valueOf(HistGraph[i]);
							}
							// データの書き込み
							csvReadWrite.write(filename, recData);
						}
					}
				}
			}
		}
	}

	private float CountToSievert4() {
		// 評価範囲の指定
		// 取得したカウント値からシーベルト単位へ変換する
		// 移動平均の評価サイズはAreaDataSize

		// 評価範囲の指定
		int sta = (int) AreaStart;
		int stp = (int) AreaEnd;

		float num, sum;
		float pSv;
		float temp;
		float sumResult;
		int index;
		float ans;
		int areaLow, areaHigh;

		// エネルギー変換の有効範囲指定
		// インデックスを検索

		areaLow = Arrays.binarySearch(LogListX, sta);
		if (areaLow < 0) {
			areaLow = ~areaLow;
		}

		areaHigh = Arrays.binarySearch(LogListX, stp);
		if (areaHigh < 0) {
			areaHigh = ~areaHigh;
		}
		if (areaHigh > 4095) {
			areaHigh = 4095;
		}

		if (LogSize <= AreaDataSize) {
			sum = 0;
			for (int i = 0; i < LogSize; i++) {
				num = 0;
				for (int k = areaLow; k < areaHigh + 1; k++) {
					temp = LogData[i][k];
					pSv = temp * LogCorrection[k];
					num += pSv;
				}
				sum += num;
			}
			sumResult = sum / LogSize;
		} else {
			index = LogSize - AreaDataSize - 1;
			sum = 0;
			for (int i = 0; i < AreaDataSize; i++) {
				num = 0;
				index += 1;
				index = index & 0xFF;
				for (int k = areaLow; k < areaHigh + 1; k++) {
					temp = LogData[index][k];
					pSv = temp * LogCorrection[k];
					num += pSv;
				}
				sum += num;
			}
			sumResult = sum / AreaDataSize;
		}

		// pSv/s -> uSv/h
		// ans = sumResult * 60 * 60 * (float) Math.pow(10, -3);
		ans = sumResult * 3.6f;

		if (BaseSievert != 0) {
			ans /= BaseSievert;
		}

		return ans;
	}

	private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();

			if (UsbManager.ACTION_USB_DEVICE_DETACHED.equals(action)) {
				UsbDevice device = (UsbDevice) intent
						.getParcelableExtra(UsbManager.EXTRA_DEVICE);
				if (device != null) {
					AlertDialog.Builder dlg = new AlertDialog.Builder(context);
					dlg.setTitle(getString(R.string.ERROR_DEVICE_DETACHED_DIALOG_TITLE));
					dlg.setIcon(android.R.drawable.ic_delete);
					dlg.setMessage(getString(R.string.ERROR_DEVICE_DETACHED_DIALOG_MESSAGE));
					dlg.setPositiveButton("OK",
							new DialogInterface.OnClickListener() {
								
								public void onClick(DialogInterface dialog,
										int which) {
									finish();
								}
							});
					dlg.setCancelable(false);
					AlertDialog alertDlg = dlg.create();
					alertDlg.show();
				}
			}
		}
	};
}
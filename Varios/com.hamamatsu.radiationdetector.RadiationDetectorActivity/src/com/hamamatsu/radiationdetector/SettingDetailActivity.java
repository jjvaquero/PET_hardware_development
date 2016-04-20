package com.hamamatsu.radiationdetector;

import java.io.File;
import java.util.Arrays;

import com.hamamatsu.radiationdetector.file.FileListDialog;
import com.hamamatsu.radiationdetector.file.FileListDialog.onFileListDialogListener;
import com.hamamatsu.radiationdetector.file.iniReadWrite;
import com.hamamatsu.radiationdetector.rdmusb.C12137;
import com.hamamatsu.radiationdetector.rdmusb.hybrid;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;

public class SettingDetailActivity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

		int index = 0;
		Bundle extras = getIntent().getExtras();
		if (extras != null) {
			index = extras.getInt("index");
		}

		FrameLayout layout = new FrameLayout(this);
		layout.setId(R.id.details);
		setContentView(layout);

		DetailsFragment fragment = DetailsFragment.newInstance(index);
		FragmentTransaction ft = getFragmentManager().beginTransaction();
		ft.replace(R.id.details, fragment);
		ft.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
		ft.commit();
	}

	public static class DetailsFragment extends Fragment implements
			OnClickListener, onFileListDialogListener {
		static final String TAG = "SettingActivity";

		static final int MODE_APPSET = 0;
		static final int MODE_HVPS = 1;
		static final int MODE_EEPROM = 2;
		static final int MODE_ETC = 3;
		static final int MODE_DEBUG = 4;

		static final int INI_FILE_SAVE = 0;
		static final int INI_FILE_OPEN = 1;

		static final int[] ENERGYTIME = { 10, 30, 60, 180 };
		static final int[] ENERGYSAVEFREQ = { 30, 60, 600, 3600, 10800, 21600,
				43200 };

		private static final int DATA_ARRAY_ELEMENT_COUNT = 4096;

		/***  ***/
		private UsbDeviceConnection mUsbConnection;
		private int ActivityMode;
		private double NumericUpDownComparator;
		private int LowerEnergyLimit;
		private double EnergyMin;
		private double EnergyMax;
		private double CorrectCoef;
		private int EnergyTime;
		private int EnergySaveFreq;
		private float[] LogListX;
		private double BaseEnergy;
		private float[] ListX;
		// private int ListXFlg = 0;
		private int AreaDataSize;
		private int LogInterval;

		// データ保存先のパス
		private String InnerStoragePath;
		// private String OuterStoragePath;
		// private String InnerStoragePathDefault;
		// private String OuterStoragePathDefault;
		private String SaveFilePath;
		// private boolean mStorageSelect = false; //
		// 内部ストレージボタンと外部ストレージボタンの押下判定　true：外部　false：内部
		private int mIniFileProcDetermination = INI_FILE_SAVE; // INIファイル処理の判別に使用

		/*** UI ***/
		// private Button mBtnClose;
		// private Button mBtnExtension;
		private Button mBtnGetHvpsDac;
		private Button mBtnGetAdcVoltage;
		private Button mGetAdcCurrent;
		private Button mGetAdcTemperature;
		private Button mBtnEEPRead;
		private Button mBtnComparatorEnt;
		private EditText mEditComparator;
		private EditText mEditHVDAC;
		private EditText mEditVolMoni;
		private EditText mEditAnpMoni;
		private EditText mEditTempDigit;
		private EditText mEditTemperature;
		private EditText mEditCoef0;
		private EditText mEditCoef1;
		private EditText mEditCoef2;
		private EditText mEditCoef3;
		private EditText mEditComparaIni;
		private EditText mEditEnergyMin;
		private EditText mEditEnergyMax;
		private EditText mEditSievert;
		private EditText mEditADCEnergy;
		private RadioGroup mRadioGroup;
		private TextView mViVMon;
		private TextView mViThreshold;
		private TextView mViHvDac;
		private EditText mEditComEnergyMin;
		private EditText mEditComEnergyMax;
		private EditText mEditComCoef;
		private Button mBtnEEPWrite;
		private Button mBtnSave;
		private Button mBtnOpen;
		private Button mBtnComEnergyEnt;
		private Button mBtnGetHvpsDacEnt;
		private Button mBtnAdcEnergy;
		private Spinner mSpinnerEnergyTime;
		private Spinner mSpinnerEnergySaveFreq;

		public static DetailsFragment newInstance(int index) {
			DetailsFragment fragment = new DetailsFragment();
			Bundle bundle = new Bundle();
			bundle.putInt("index", index);
			fragment.setArguments(bundle);

			return fragment;
		}

		@Override
		public void onCreate(Bundle savedInstanceState) {
			super.onCreate(savedInstanceState);

		}

		@Override
		public View onCreateView(LayoutInflater inflater, ViewGroup container,
				Bundle savedInstanceState) {
			int index = getArguments().getInt("index", 0);
			int res = 0;

			switch (index) {
			case 0:
				res = R.layout.setting_appset;
				ActivityMode = MODE_APPSET;
				break;
			case 1:
				res = R.layout.setting_hvps;
				ActivityMode = MODE_HVPS;
				break;
			case 2:
				res = R.layout.setting_eeprom;
				ActivityMode = MODE_EEPROM;
				break;
			case 3:
				res = R.layout.setting_etc;
				ActivityMode = MODE_ETC;
			default:
				break;
			}

			return inflater.inflate(res, container, false);
		}

		@Override
		public void onResume() {
			super.onResume();

			// 内部ストレージのパスを取得
			InnerStoragePath = Environment.getExternalStorageDirectory()
					.toString(); // APIで取得（タブレットの場合は内部ストレージ）
			File outDir = new File(InnerStoragePath);

			if (outDir.exists()) // 内部ストレージのパスがある場合
			{
				// 内部にパッケージ名のフォルダを作成する
				InnerStoragePath = InnerStoragePath + "/"
						+ getActivity().getPackageName();
				outDir = new File(InnerStoragePath);
				// パッケージ名のディレクトリがなければ作成する
				try {
					if (!outDir.exists()) {
						// パッケージ名のディレクトリが存在しない場合新規作成
						outDir.mkdir();
					}
				} catch (SecurityException ex) {
					// 例外発生時の処理
					ex.toString();
				}
			} else // 内部ストレージのパスがない場合
			{
				InnerStoragePath = ""; // 内部パスを空白にする
			}

			GetReturnValue();

			mUsbConnection = Global.UsbConnection;

			/*** init ***/

			switch (ActivityMode) {
			case MODE_APPSET:
				// Button
				mBtnSave = (Button) getActivity().findViewById(R.id.btnSave);
				mBtnSave.setOnClickListener(this);
				mBtnOpen = (Button) getActivity().findViewById(R.id.btnOpen);
				mBtnOpen.setOnClickListener(this);
				mBtnComparatorEnt = (Button) getActivity().findViewById(
						R.id.btnComparatorEnt);
				mBtnComparatorEnt.setOnClickListener(this);
				mBtnComEnergyEnt = (Button) getActivity().findViewById(
						R.id.btnComEnergyEnt);
				mBtnComEnergyEnt.setOnClickListener(this);

				// Text & Edit
				mEditComparator = (EditText) getActivity().findViewById(
						R.id.editComparator);
				mEditComEnergyMin = (EditText) getActivity().findViewById(
						R.id.editComEnergyMin);
				mEditComEnergyMax = (EditText) getActivity().findViewById(
						R.id.editComEnergyMax);
				mEditComCoef = (EditText) getActivity().findViewById(
						R.id.editComCoef);
				mViThreshold = (TextView) getActivity().findViewById(
						R.id.viThreshold);

				// etc
				mSpinnerEnergyTime = (Spinner) getActivity().findViewById(
						R.id.spinEnergyTime);
				ArrayAdapter<CharSequence> adapterEnergyTime = ArrayAdapter
						.createFromResource(getActivity(),
								R.array.mSpinEnergyTime,
								android.R.layout.simple_spinner_item);
				adapterEnergyTime
						.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
				mSpinnerEnergyTime.setAdapter(adapterEnergyTime);
				mSpinnerEnergyTime
						.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
						
							public void onItemSelected(AdapterView<?> parent,
									View view, int position, long id) {
								Spinner spinner = (Spinner) parent;
								EnergyTime = ENERGYTIME[spinner
										.getSelectedItemPosition()];
							}

							
							public void onNothingSelected(AdapterView<?> parent) {
							}
						});

				mSpinnerEnergySaveFreq = (Spinner) getActivity().findViewById(
						R.id.spinEnergySaveFreq);
				ArrayAdapter<CharSequence> adapterEnergySaveFreq = ArrayAdapter
						.createFromResource(getActivity(),
								R.array.mSpinEnergySaveFreq,
								android.R.layout.simple_spinner_item);
				adapterEnergySaveFreq
						.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
				mSpinnerEnergySaveFreq.setAdapter(adapterEnergySaveFreq);
				mSpinnerEnergySaveFreq
						.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
						
							public void onItemSelected(AdapterView<?> parent,
									View view, int position, long id) {
								Spinner spinner = (Spinner) parent;
								EnergySaveFreq = ENERGYSAVEFREQ[spinner
										.getSelectedItemPosition()];
							}

							
							public void onNothingSelected(AdapterView<?> parent) {
							}
						});

				Initialize();

				break;
			case MODE_HVPS:
				// Button
				mBtnGetHvpsDac = (Button) getActivity().findViewById(
						R.id.btnHVDAC);
				mBtnGetHvpsDac.setOnClickListener(this);
				mBtnGetHvpsDacEnt = (Button) getActivity().findViewById(
						R.id.btnHVDACEnt);
				mBtnGetHvpsDacEnt.setOnClickListener(this);
				mBtnGetAdcVoltage = (Button) getActivity().findViewById(
						R.id.btnVolMoni);
				mBtnGetAdcVoltage.setOnClickListener(this);
				mGetAdcCurrent = (Button) getActivity().findViewById(
						R.id.btnAnpMoni);
				mGetAdcCurrent.setOnClickListener(this);
				mGetAdcTemperature = (Button) getActivity().findViewById(
						R.id.btnTemperature);
				mGetAdcTemperature.setOnClickListener(this);

				// Text & Edit
				mEditHVDAC = (EditText) getActivity().findViewById(
						R.id.editHVDAC);
				mEditVolMoni = (EditText) getActivity().findViewById(
						R.id.editVolMoni);
				mEditAnpMoni = (EditText) getActivity().findViewById(
						R.id.editAnpMoni);
				mEditTempDigit = (EditText) getActivity().findViewById(
						R.id.editTempDigit);
				mEditTemperature = (EditText) getActivity().findViewById(
						R.id.editTemperature);

				break;
			case MODE_EEPROM:
				// Button
				mBtnEEPRead = (Button) getActivity().findViewById(
						R.id.btnEEPRead);
				mBtnEEPRead.setOnClickListener(this);
				mBtnEEPWrite = (Button) getActivity().findViewById(
						R.id.btnEEPWrite);
				mBtnEEPWrite.setOnClickListener(this);

				// Text & Edit
				mEditCoef0 = (EditText) getActivity().findViewById(
						R.id.editCoef0);
				mEditCoef1 = (EditText) getActivity().findViewById(
						R.id.editCoef1);
				mEditCoef2 = (EditText) getActivity().findViewById(
						R.id.editCoef2);
				mEditCoef3 = (EditText) getActivity().findViewById(
						R.id.editCoef3);

				// etc
				mRadioGroup = (RadioGroup) getActivity().findViewById(
						R.id.radioGroup);

				break;
			case MODE_ETC:
				// Button
				mBtnAdcEnergy = (Button) getActivity().findViewById(
						R.id.btnADCEnergy);
				mBtnAdcEnergy.setOnClickListener(this);
				mBtnEEPRead = (Button) getActivity().findViewById(
						R.id.btnEEPRead);
				mBtnEEPRead.setOnClickListener(this);
				mBtnEEPWrite = (Button) getActivity().findViewById(
						R.id.btnEEPWrite);
				mBtnEEPWrite.setOnClickListener(this);

				// Text & Edit
				mEditComparaIni = (EditText) getActivity().findViewById(
						R.id.editComparatIni);
				mEditEnergyMin = (EditText) getActivity().findViewById(
						R.id.editEnergyMin);
				mEditEnergyMax = (EditText) getActivity().findViewById(
						R.id.editEnergyMax);
				mEditSievert = (EditText) getActivity().findViewById(
						R.id.editSievert);
				mEditADCEnergy = (EditText) getActivity().findViewById(
						R.id.editADCEnergy);
				mViVMon = (TextView) getActivity().findViewById(R.id.viVMon);
				mViHvDac = (TextView) getActivity().findViewById(R.id.viHvDac);

				break;
			default:
				break;
			}

			// BUTTON
			// mBtnClose = (Button) findViewById(R.id.btnClose);
			// mBtnClose.setOnClickListener(this);

			// mBtnExtension = (Button) findViewById(R.id.btnExtension);
			// mBtnExtension.setOnClickListener(this);
			// mBtnExtension.setText(R.string.BUTTON_TEXT_EX_OFF);

			// TEXT & EDIT

			// etc
			// LinearLayout EXLay = (LinearLayout)
			// findViewById(R.id.llayExtension);
			// EXLay.setVisibility(View.INVISIBLE);

			// SPINNER

			// デバイス取り外しレシーバー登録
			IntentFilter filter = new IntentFilter();
			filter.addAction(UsbManager.ACTION_USB_DEVICE_DETACHED);
			getActivity().registerReceiver(mBroadcastReceiver, filter);
		}

		@Override
		public void onPause() {
			super.onPause();

			getActivity().unregisterReceiver(mBroadcastReceiver);
			mUsbConnection = null;
		}

		@Override
		public void onStop() {
			super.onStop();

			EndActivity();
		}

		@Override
		public void onDestroy() {
			super.onDestroy();

		}

		
		public void onClick(View v) {
			switch (v.getId()) {
			// case R.id.btnClose:
			// // すべてのパラメータを更新し終了
			// if (mUsbConnection != null) {
			// ButtonComparatorEnt_Click();
			// }
			//
			// ButtonUpdateCursor_Click();
			//
			// ReturnValue();
			//
			// this.finish();
			// break;
			case R.id.btnSave:
				if (!InnerStoragePath.equals("")) // 内部パスがある場合
				{
					// ストレージの残容量確認
					StatFs fs = new StatFs(InnerStoragePath);
					long bkSize = fs.getBlockSize();
					long avaBlocks = fs.getAvailableBlocks();
					long remainSize = bkSize * avaBlocks;

					if (remainSize < RadiationDetectorActivity.REMAIN_SIZE_LIMIT) // ストレージの残容量が1GB未満の場合、保存しない
					{
						StorageSizeErrorDialog();
					} else {
						mIniFileProcDetermination = INI_FILE_SAVE;
						// StorageSelectDialog(true);
						FolderSelectDialog2(InnerStoragePath,
								FileListDialog.DIALOG_MODE_SAVE);
					}
				} else {
					StorageErrorDialog();
				}
				break;
			case R.id.btnOpen:
				if (!InnerStoragePath.equals("")) // 内部パスがある場合
				{
					mIniFileProcDetermination = INI_FILE_OPEN;
					// StorageSelectDialog(false);
					FolderSelectDialog2(InnerStoragePath,
							FileListDialog.DIALOG_MODE_OPEN);
				} else {
					StorageErrorDialog();
				}
				break;
			case R.id.btnComparatorEnt:
				if (mUsbConnection != null) {
					ButtonComparatorEnt_Click();
				}
				break;
			case R.id.btnComEnergyEnt:
				ButtonUpdateCursor_Click();
				break;
			// case R.id.btnExtension:
			// LinearLayout EXLay = (LinearLayout)
			// findViewById(R.id.llayExtension);
			//
			// if (mBtnExtension.getText().toString()
			// .equals(getString(R.string.BUTTON_TEXT_EX_OFF))) {
			// EXLay.setVisibility(View.VISIBLE);
			// mBtnExtension.setText(R.string.BUTTON_TEXT_EX_ON);
			// if (mUsbConnection != null) {
			// ButtonEepromRead_Click();
			// }
			// } else {
			// EXLay.setVisibility(View.INVISIBLE);
			// mBtnExtension.setText(R.string.BUTTON_TEXT_EX_OFF);
			// }
			// break;
			case R.id.btnHVDAC:
				if (mUsbConnection != null) {
					ButtonGetHvpsDac_Click();
				}
				break;
			case R.id.btnHVDACEnt:
				if (mUsbConnection != null) {
					ButtonSetHvpsDac_Click();
				}
				break;
			case R.id.btnVolMoni:
				if (mUsbConnection != null) {
					ButtonGetAdcVoltage_Click();
				}
				break;
			case R.id.btnAnpMoni:
				if (mUsbConnection != null) {
					ButtonGetAdcCurrent_Click();
				}
				break;
			case R.id.btnTemperature:
				if (mUsbConnection != null) {
					ButtonGetAdcTemperature_Click();
				}
				break;
			case R.id.btnADCEnergy:
				ButtonAdcEnergy_Click();
				break;
			case R.id.btnEEPWrite:
				if (mUsbConnection != null) {
					ButtonEepromWrite_Click();
				}
				break;
			case R.id.btnEEPRead:
				if (mUsbConnection != null) {
					ButtonEepromRead_Click();
				}
				break;
			default:
				break;
			}
		}

		
		public void onClickFileList(File file) {
			// ChangeFolderDetermination(file);
			// StoredFolder();

			SaveFilePath = file.getPath();

			switch (mIniFileProcDetermination) {
			case INI_FILE_SAVE:
				ButtonSaveConfig_Click();
				break;
			case INI_FILE_OPEN:
				ButtonOpenConfig_Click();
				break;
			default:
				break;
			}
		}

		private void EndActivity() {
			Global.AreaDataSize = AreaDataSize;
			Global.LogInterval = LogInterval;
			Global.NumericUpDownComparator = NumericUpDownComparator;
			Global.LowerEnergyLimit = LowerEnergyLimit;
			Global.AreaStart = EnergyMin;
			Global.AreaEnd = EnergyMax;
			Global.BaseSievert = CorrectCoef;
			Global.LogListX = LogListX;
			Global.BaseEnergy = BaseEnergy;

			getActivity().finish();
		}

		private void GetReturnValue() {
			AreaDataSize = Global.AreaDataSize;
			LogInterval = Global.LogInterval;
			NumericUpDownComparator = Global.NumericUpDownComparator;
			LowerEnergyLimit = Global.LowerEnergyLimit;
			EnergyMin = Global.AreaStart;
			EnergyMax = Global.AreaEnd;
			CorrectCoef = Global.BaseSievert;
			LogListX = Global.LogListX;
			BaseEnergy = Global.BaseEnergy;
			int ListXFlg = Global.ListXFlg;
			if (ListXFlg != 0) {
				float[] tmp = Global.LogListX;
				for (int i = 0; i < DATA_ARRAY_ELEMENT_COUNT; i++) {
					ListX[i] = tmp[i];
				}
			}
		}

		private void FolderSelectDialog2(String path, int mode) {
			FileListDialog dlg = new FileListDialog(getActivity());
			dlg.setDialogMode(mode);
			dlg.setDefultPath(path);
			dlg.setOnFileListDialogListener((onFileListDialogListener) this);
			dlg.show(path, path);
		}

		private void StorageErrorDialog() {
			AlertDialog.Builder FolderErrorBuilder = new AlertDialog.Builder(
					getActivity());
			FolderErrorBuilder
					.setTitle(getString(R.string.storage_error_title));

			FolderErrorBuilder.setNegativeButton("キャンセル",
					new DialogInterface.OnClickListener() {
						
						public void onClick(DialogInterface dialog, int which) {

						}
					});

			FolderErrorBuilder.setCancelable(true);
			AlertDialog FolderError = FolderErrorBuilder.create();
			FolderError.show();
		}

		private void StorageSizeErrorDialog() {
			AlertDialog.Builder StorageSizeErrorBuilder = new AlertDialog.Builder(
					getActivity());
			StorageSizeErrorBuilder
					.setTitle(getString(R.string.ERROR_STORAGE_SIZE_CANCEL_DIALOG_MESSAGE));

			StorageSizeErrorBuilder.setPositiveButton("OK",
					new DialogInterface.OnClickListener() {
						
						public void onClick(DialogInterface dialog, int which) {

						}
					});

			StorageSizeErrorBuilder.setCancelable(false);
			AlertDialog StorageSizeError = StorageSizeErrorBuilder.create();
			StorageSizeError.show();
		}

		private void Initialize() {
			// 初期値設定
			int cnt = 0;
			for (cnt = 0; cnt < ENERGYTIME.length; cnt++) {
				if (ENERGYTIME[cnt] == EnergyTime) {
					mSpinnerEnergyTime.setSelection(cnt);
					break;
				}
			}
			if (cnt != ENERGYTIME.length) {
				mSpinnerEnergyTime.setSelection(cnt);
			} else {
				mSpinnerEnergyTime.setSelection(1); // デフォルト値
			}

			cnt = 0;
			for (cnt = 0; cnt < ENERGYSAVEFREQ.length; cnt++) {
				if (ENERGYSAVEFREQ[cnt] == EnergySaveFreq) {
					mSpinnerEnergySaveFreq.setSelection(cnt);
					break;
				}
			}
			if (cnt != ENERGYSAVEFREQ.length) {
				mSpinnerEnergySaveFreq.setSelection(cnt);
			} else {
				mSpinnerEnergySaveFreq.setSelection(1); // デフォルト値
			}

			mEditComparator.setText(String.format("%.0f",
					NumericUpDownComparator));
			mEditComEnergyMin.setText(String.format("%.0f", EnergyMin));
			mEditComEnergyMax.setText(String.format("%.0f", EnergyMax));
			mEditComCoef.setText(String.format("%.0f", CorrectCoef));
		}

		private void ButtonSaveConfig_Click() {
			// INIファイル保存
			String filename = SaveFilePath;
			// 書き込むデータの作成
			String[] recData = new String[8];
			// コンパレータ
			recData[0] = mEditComparator.getText().toString();
			// ADC遅延
			recData[1] = "0";
			// Hold遅延
			recData[2] = "0";
			// 単位時間
			recData[3] = String.valueOf(EnergyTime);
			// エネルギースペクトル更新時間
			recData[4] = String.valueOf(EnergySaveFreq);
			// 検出エリアの設定値
			recData[5] = mEditComEnergyMin.getText().toString();
			recData[6] = mEditComEnergyMax.getText().toString();
			// 変換係数値
			recData[7] = mEditComCoef.getText().toString();
			// データの書き込み
			iniReadWrite.write(filename, recData);
		}

		private void ButtonOpenConfig_Click() {
			// INIファイル読み込み
			String filename = SaveFilePath;
			// ファイルから読み込み
			String[] rec = new String[8];
			rec = iniReadWrite.read(filename);
			if (rec != null) {
				// データの割り当て
				// コンパレータ
				mEditComparator.setText(rec[0]);
				// ADC遅延
				// rec[1];
				// Hold遅延
				// rec[2];
				// 単位時間
				try {
					EnergyTime = Integer.parseInt(rec[3]);
				} catch (NumberFormatException e) {
					// 読み込んだ値が整数以外の場合、元の値を使用
				}
				int cnt = 0;
				for (cnt = 0; cnt < ENERGYTIME.length; cnt++) {
					if (ENERGYTIME[cnt] == EnergyTime) {
						mSpinnerEnergyTime.setSelection(cnt);
						break;
					}
				}
				if (cnt != ENERGYTIME.length) {
					mSpinnerEnergyTime.setSelection(cnt);
				} else {
					mSpinnerEnergyTime.setSelection(1); // デフォルト値
				}
				// エネルギースペクトル更新時間
				try {
					EnergySaveFreq = Integer.parseInt(rec[4]);
				} catch (NumberFormatException e) {
					// 読み込んだ値が整数以外の場合、元の値を使用
				}
				cnt = 0;
				for (cnt = 0; cnt < ENERGYSAVEFREQ.length; cnt++) {
					if (ENERGYSAVEFREQ[cnt] == EnergySaveFreq) {
						mSpinnerEnergySaveFreq.setSelection(cnt);
						break;
					}
				}
				if (cnt != ENERGYSAVEFREQ.length) {
					mSpinnerEnergySaveFreq.setSelection(cnt);
				} else {
					mSpinnerEnergySaveFreq.setSelection(1); // デフォルト値
				}
				// 検出エリアの設定値
				mEditComEnergyMin.setText(rec[5]);
				mEditComEnergyMax.setText(rec[6]);
				// 変換係数値
				mEditComCoef.setText(rec[7]);
			}
		}

		private void ButtonComparatorEnt_Click() {
			// スレッショルド値指定

			double data;
			int[] index = new int[1];
			int result;
			double mv;

			// 指定値取得
			if (mEditComparator.getText().toString().equals("")) {
				data = 10;
				mEditComparator.setText("10");
			}

			data = Double.parseDouble(mEditComparator.getText().toString());

			if (data < 10) {
				data = 10;
				mEditComparator.setText("10");
			}

			NumericUpDownComparator = data;

			// 指定されたエネルギーポイントからインデックスサーチ
			index[0] = Arrays.binarySearch(LogListX, (float) data);

			if (index[0] < 0) {
				index[0] = ~index[0];
			}

			if (index[0] >= 0 & index[0] < 4095) {
				result = C12137
						.RdmUsb_SetEnergyThreshold(mUsbConnection, index);
				if (result == hybrid.HN_SUCCESS) {
					mv = (double) index[0] * 5000 / 4096;
					mViThreshold.setText(String.format("%.0f", mv) + "[mV]");
				}

				LowerEnergyLimit = index[0];
			}
		}

		private void ButtonUpdateCursor_Click() {

			// カーソル位置を指定する
			// カーソル位置変更に伴いシーベル換算の再計算を実行

			double sta, stp, temp;

			// 空白の場合、直前の値を取得
			if (mEditComEnergyMin.getText().toString().equals("")) {
				mEditComEnergyMin.setText(String.format("%.0f", EnergyMin));
			}
			if (mEditComEnergyMax.getText().toString().equals("")) {
				mEditComEnergyMax.setText(String.format("%.0f", EnergyMax));
			}
			if (mEditComCoef.getText().toString().equals("")) {
				mEditComCoef.setText(String.format("%.0f", CorrectCoef));
			}

			sta = Double.parseDouble(mEditComEnergyMin.getText().toString());
			stp = Double.parseDouble(mEditComEnergyMax.getText().toString());

			if (sta > stp) {
				mEditComEnergyMax.setText(String.format("%.0f", sta));
				mEditComEnergyMin.setText(String.format("%.0f", stp));

				temp = sta;
				sta = stp;
				stp = temp;
			}

			EnergyMin = sta;
			EnergyMax = stp;

			// 変換係数変更
			CorrectCoef = Double.parseDouble(mEditComCoef.getText().toString());
		}

		private void ButtonGetHvpsDac_Click() {
			int result;
			int data[] = new int[1];

			result = C12137.RdmUsb_HvpsGetDcdcControlVoltage(mUsbConnection,
					data);
			if (result == hybrid.HN_SUCCESS) {
				mEditHVDAC.setText(String.valueOf(data[0]));
			}
		}

		private void ButtonSetHvpsDac_Click() {
			// HVPS DAC 設定
			// エラー処理なし

			int result;
			int[] data = new int[1];
			float vout;

			data[0] = Integer.parseInt(mEditHVDAC.getText().toString());
			result = C12137.RdmUsb_HvpsSetDcdcControlVoltage(mUsbConnection,
					data);

			vout = (float) data[0];
			vout = vout * 5f / 65535f * (10f / (10f + 39f))
					* ((470f + 470f + 10f) / 10f);

			mViHvDac.setText(String.format("%.2f", vout) + "[V]");
		}

		private void ButtonGetAdcVoltage_Click() {
			int result;
			int data[] = new int[1];
			float vout;

			result = C12137.RdmUsb_HvpsGetDcdcOutputVoltage(mUsbConnection,
					data);
			if (result == hybrid.HN_SUCCESS) {
				mEditVolMoni.setText(String.valueOf(data[0]) + " (H'"
						+ Integer.toHexString(data[0]) + ")");
				vout = (float) data[0];
				vout = vout * 5f / 1023f * ((470f + 470f + 10f) / 10f);
				mViVMon.setText(String.format("%.1f", vout) + "[V]");
			} else {
				mEditVolMoni.setText("----");
			}
		}

		private void ButtonGetAdcCurrent_Click() {
			int result;
			int data[] = new int[1];

			result = C12137.RdmUsb_HvpsGetDcdcOutputCurrent(mUsbConnection,
					data);
			if (result == hybrid.HN_SUCCESS) {
				mEditAnpMoni.setText(String.valueOf(data[0]) + " (H'"
						+ Integer.toHexString(data[0]) + ")");
			} else {
				mEditAnpMoni.setText("----");
			}
		}

		private void ButtonGetAdcTemperature_Click() {
			int result;
			int data[] = new int[1];
			float temp[] = new float[1];

			result = C12137.RdmUsb_HvpsGetTemperature(mUsbConnection, temp,
					data);
			mEditTempDigit.setText(String.valueOf(data[0]) + " (H'"
					+ Integer.toHexString(data[0]) + ")");
			mEditTemperature.setText(String.format("%.1f", temp[0]) + " ['C]");
		}

		private void ButtonAdcEnergy_Click() {
			double temp;
			double x;

			// 空白の場合、直前の値を取得
			if (mEditADCEnergy.getText().toString().equals("")) {
				mEditADCEnergy.setText(String.valueOf(BaseEnergy));
			}

			ListX = new float[RadiationDetectorActivity.DATA_ARRAY_ELEMENT_COUNT];

			temp = Double.parseDouble(mEditADCEnergy.getText().toString());

			BaseEnergy = temp;
			for (int i = 0; i < RadiationDetectorActivity.DATA_ARRAY_ELEMENT_COUNT; i++) {
				x = LogListX[i];
				ListX[i] = (float) (x * temp);
			}

			// ListXFlg = 1;
		}

		private void ButtonEepromWrite_Click() {
			int data[] = new int[1];
			float temp;

			// 動作モード指定
			if (mRadioGroup.getCheckedRadioButtonId() == R.id.radioDegree) {
				data[0] = 0;
			} else {
				data[0] = 1;
			}

			C12137.RdmUsb_WriteEeprom(mUsbConnection, 0, data);
			// 温度補償係数
			data[0] = Integer.parseInt(mEditCoef0.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 2, data);
			data[0] = Integer.parseInt(mEditCoef1.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 4, data);
			data[0] = Integer.parseInt(mEditCoef2.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 6, data);
			data[0] = Integer.parseInt(mEditCoef3.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 8, data);
			// 起動時コンパレータ設定値
			data[0] = Integer.parseInt(mEditComparaIni.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 10, data);
			// エネルギー変換指定範囲（下限）
			data[0] = Integer.parseInt(mEditEnergyMin.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 12, data);
			// エネルギー変換指定範囲（上限）
			data[0] = Integer.parseInt(mEditEnergyMax.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 14, data);
			// uSv/h変換係数
			data[0] = Integer.parseInt(mEditSievert.getText().toString());
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 16, data);
			// ADC値⇒エネルギー補正係数値
			temp = Float.parseFloat((mEditADCEnergy.getText().toString())) * 1000.0f;
			data[0] = (int) temp;
			C12137.RdmUsb_WriteEeprom(mUsbConnection, 18, data);
		}

		private void ButtonEepromRead_Click() {
			int data[] = new int[1];
			float temp;

			// 動作モード
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 0, data);

			if (data[0] == 0) {
				mRadioGroup.check(R.id.radioDegree);
			} else {
				mRadioGroup.check(R.id.radioControl);
			}

			// 温度補償係数
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 2, data);
			mEditCoef0.setText(String.valueOf(data[0]));
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 4, data);
			mEditCoef1.setText(String.valueOf(data[0]));
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 6, data);
			mEditCoef2.setText(String.valueOf(data[0]));
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 8, data);
			mEditCoef3.setText(String.valueOf(data[0]));

			// 起動時コンパレータ設定値
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 10, data);
			if (data[0] > 4095) {
				data[0] = 4095;
			}
			mEditComparaIni.setText(String.valueOf(data[0]));
			// エネルギー変換指定範囲（下限）
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 12, data);
			if (data[0] > 4095) {
				data[0] = 4095;
			}
			mEditEnergyMin.setText(String.valueOf(data[0]));
			// エネルギー変換指定範囲（上限）
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 14, data);
			if (data[0] > 4095) {
				data[0] = 4095;
			}
			mEditEnergyMax.setText(String.valueOf(data[0]));
			// uSv/h変換係数
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 16, data);
			mEditSievert.setText(String.valueOf(data[0]));

			// ADC値⇒エネルギー補正係数値
			C12137.RdmUsb_ReadEeprom(mUsbConnection, 18, data);
			temp = (float) data[0] / 1000f;
			mEditADCEnergy.setText(String.format("%.3f", temp));
		}

		private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() {
			@Override
			public void onReceive(Context context, Intent intent) {
				String action = intent.getAction();

				if (UsbManager.ACTION_USB_DEVICE_DETACHED.equals(action)) {
					UsbDevice device = (UsbDevice) intent
							.getParcelableExtra(UsbManager.EXTRA_DEVICE);
					if (device != null) {
						AlertDialog.Builder dlg = new AlertDialog.Builder(
								context);
						dlg.setTitle(getString(R.string.ERROR_DEVICE_DETACHED_DIALOG_TITLE));
						dlg.setIcon(android.R.drawable.ic_delete);
						dlg.setMessage(getString(R.string.ERROR_DEVICE_DETACHED_DIALOG_MESSAGE));
						dlg.setPositiveButton("OK",
								new DialogInterface.OnClickListener() {
									
									public void onClick(DialogInterface dialog,
											int which) {
										getActivity().moveTaskToBack(true);
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
}

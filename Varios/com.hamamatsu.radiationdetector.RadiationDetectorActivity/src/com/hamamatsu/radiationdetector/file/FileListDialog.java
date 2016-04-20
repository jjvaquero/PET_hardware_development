package com.hamamatsu.radiationdetector.file;

import java.io.File;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.InputType;
import android.text.SpannableStringBuilder;
import android.view.*;
import android.widget.AbsListView.MultiChoiceModeListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

public class FileListDialog extends Activity implements View.OnClickListener,
		OnItemClickListener, MultiChoiceModeListener {
	private static final String TITLE_SAVEFILE_DIALOG = "ファイル名";
	private static final String TITLE_SAVEFOLDER_DIALOG = "フォルダ名";
	private static final String ERROR_MAKE_OVERWRITE_SAVE = "指定されたファイル名は既に存在します\n別の名前を指定してください";
	private static final String ERROR_MAKE_FILE_NAME_MESSAGE = "ファイル名が不正です";
	private static final String ERROR_MAKE_DIR_NAME_MESSAGE = "フォルダ名が不正です";

	private static final String error_name[] = { "\\", "/", ":", "*", "?", "|",
			"\"", "<", ">" };

	public static final int DIALOG_MODE_OPEN = 1;
	public static final int DIALOG_MODE_SAVE = 2;
	public static final int DIALOG_MODE_SELECT_DIR = 3;

	private Context mParent = null;
	private int mMode = 0;
	private String mDefultPath = "";
	private File mFile = null;
	private File[] mDialogFileList;
	private boolean[] mDeleteFlg = null;
	private int mSelectCount = -1;
	private onFileListDialogListener mListener = null;
	private EditText mEdit = null;
	private ListView mList = null;
	private AlertDialog mDlg = null;

	/**
	 * デフォルトパスの設定
	 * 
	 * @param path
	 */
	public void setDefultPath(String path) {
		mDefultPath = path;
	}

	/**
	 * ファイルダイアログの起動モード
	 * 
	 * @param Mode
	 *            DIALOG_MODE_OPEN : ファイル参照ダイアログ DIALOG_MODE_SAVE : ファイル保存ダイアログ
	 *            DIALOG_MODE_SELECT_DIR : ディレクトリ選択ダイアログ
	 */
	public void setDialogMode(int Mode) {
		mMode = Mode;
	}

	/**
	 * 選択ファイル名取得
	 * 
	 * @return 選択ファイル名
	 */
	public String getSelectedFileName() {
		String ret = "";
		if (mSelectCount < 0) {

		} else {
			ret = mDialogFileList[mSelectCount].getName();
		}
		return ret;
	}

	/**
	 * コンストラクタ
	 * 
	 * @param context
	 */
	public FileListDialog(Context context) {
		mParent = context;
	}


	public void onClick(View v) {

	}

	public void onItemClick(AdapterView<?> adaoter, View v, int which, long id) {
		mSelectCount = which;
		File file;

		if (mListener == null) {
		} else if (which == 0) {
			String path = backDirectory(mFile.getPath());
			show(path, path);
		} else {
			file = mDialogFileList[which - 1];
			if (file.isDirectory()) {
				show(file.getAbsolutePath(), file.getPath());
			} else {
				switch (mMode) {
				case DIALOG_MODE_OPEN:
					mDlg.dismiss();
					mListener.onClickFileList(file);
					break;
				case DIALOG_MODE_SAVE:
					break;
				case DIALOG_MODE_SELECT_DIR:
					String path = backDirectory(file.getPath());
					show(path, path);
					break;
				default:
					break;
				}
			}
		}
	}

	public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
		return true;
	}

	public boolean onCreateActionMode(ActionMode mode, Menu menu) {
		return true;
	}


	public void onDestroyActionMode(ActionMode mode) {
		deleteListFiles();
		show(mFile.getPath(), mFile.getPath());
	}


	public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
		return true;
	}


	public void onItemCheckedStateChanged(ActionMode mode, int position,
			long id, boolean checked) {
		mDeleteFlg[position] = checked;
	}

	/**
	 * ダイアログ生成
	 * 
	 * @param path
	 * @param title
	 */
	public void show(String path, String title) {
		try {
			mFile = new File(path);
			mDialogFileList = new File(path).listFiles();
			AlertDialog.Builder dlg = new AlertDialog.Builder(mParent);
			String[] list;

			if (mDlg != null) {
				mDlg.cancel();
				mDlg = null;
			}

			dlg.setTitle(title);
			if (mDialogFileList == null) {
				list = new String[1];
				list[0] = "../";
			} else {
				list = new String[mDialogFileList.length + 1];
				list[0] = "../";
				int count = 1;
				String name = "";

				// ファイル名のリストを作る
				for (File file : mDialogFileList) {
					if (file.isDirectory()) {
						// ディレクトリの場合
						name = file.getName() + "/";
					} else {
						// 通常のファイル
						name = file.getName();
					}
					list[count] = name;
					count++;
				}
			}

			mDeleteFlg = new boolean[list.length];
			mList = new ListView(mParent);
			mList.setOnItemClickListener(this);
			mList.setMultiChoiceModeListener(this);
			mList.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE_MODAL);
			ArrayAdapter<String> adapter = new ArrayAdapter<String>(mParent,
					android.R.layout.simple_list_item_checked, list);
			mList.setAdapter(adapter);
			dlg.setView(mList);

			switch (mMode) {
			case DIALOG_MODE_OPEN:
				dlg.setNegativeButton("キャンセル",
						new DialogInterface.OnClickListener() {

							public void onClick(DialogInterface dialog,
									int which) {
								onClickCancel();
							}
						});
				break;
			case DIALOG_MODE_SAVE:
			case DIALOG_MODE_SELECT_DIR:
				dlg.setPositiveButton("新しいフォルダの作成",
						new DialogInterface.OnClickListener() {
							
							public void onClick(DialogInterface dialog,
									int which) {
								onClickMakeFolder();
							}
						})
						.setNeutralButton("OK",
								new DialogInterface.OnClickListener() {
									
									public void onClick(DialogInterface dialog,
											int which) {
										onClickOK();
									}
								})
						.setNegativeButton("キャンセル",
								new DialogInterface.OnClickListener() {
									
									public void onClick(DialogInterface dialog,
											int which) {
										onClickCancel();
									}
								});
				break;
			default:
				break;
			}
			mDlg = dlg.show();
		} catch (SecurityException se) {
		} catch (Exception e) {
		}
	}

	/**
	 * DialogListenerのリスナー登録
	 * 
	 * @param listener
	 */
	public void setOnFileListDialogListener(onFileListDialogListener listener) {
		mListener = listener;
	}

	public interface onFileListDialogListener {
		public void onClickFileList(File file);
	}

	/**
	 * フォルダ生成クリックイベント
	 */
	public void onClickMakeFolder() {
		AlertDialog.Builder dlg = new AlertDialog.Builder(mParent);
		mEdit = new EditText(mParent);
		mEdit.setInputType(InputType.TYPE_CLASS_TEXT);

		dlg.setTitle(TITLE_SAVEFOLDER_DIALOG)
				.setView(mEdit)
				.setPositiveButton("作成", new DialogInterface.OnClickListener() {
					
					public void onClick(DialogInterface dialog, int which) {
						onClickMakeDir();
					}
				})
				.setNegativeButton("キャンセル",
						new DialogInterface.OnClickListener() {
							
							public void onClick(DialogInterface dialog,
									int which) {
								show(mFile.getAbsolutePath(), mFile.getPath());
							}
						}).show();
	}

	/**
	 * OKボタンクリックイベント
	 */
	public void onClickOK() {
		switch (mMode) {
		// case DIALOG_MODE_OPEN:
		// break;
		case DIALOG_MODE_SAVE:
			mEdit = new EditText(mParent);
			mEdit.setInputType(InputType.TYPE_CLASS_TEXT);

			// ファイル名入力ダイアログ作成
			AlertDialog.Builder dlg = new AlertDialog.Builder(mParent);
			String title = TITLE_SAVEFILE_DIALOG;
			dlg.setTitle(title)
					.setView(mEdit)
					.setPositiveButton("OK",
							new DialogInterface.OnClickListener() {
								
								public void onClick(DialogInterface dialog,
										int which) {
									SpannableStringBuilder sb = (SpannableStringBuilder) mEdit
											.getText();
									final String filename = sb.toString();
									final String path = mFile.getPath() + "/"
											+ filename;

									if (!checkOverwriteSave(path)) {
										String msg = ERROR_MAKE_OVERWRITE_SAVE;
										Toast toast = Toast.makeText(mParent,
												msg, Toast.LENGTH_SHORT);
										toast.setGravity(Gravity.CENTER, 0, 0);
										toast.show();
										onClickOK();
									} else if (checkPath(filename)) {
										mFile = new File(path);
										mListener.onClickFileList(mFile);
									} else {
										String msg = ERROR_MAKE_FILE_NAME_MESSAGE;
										Toast toast = Toast.makeText(mParent,
												msg, Toast.LENGTH_SHORT);
										toast.setGravity(Gravity.CENTER, 0, 0);
										toast.show();
										onClickOK();
									}
								}
							})
					.setNegativeButton("キャンセル",
							new DialogInterface.OnClickListener() {
								
								public void onClick(DialogInterface dialog,
										int which) {
									show(mFile.getAbsolutePath(),
											mFile.getPath());
								}
							}).show();
			break;
		case DIALOG_MODE_SELECT_DIR:
			mListener.onClickFileList(mFile);
			break;

		default:
			break;
		}
	}

	/**
	 * キャンセルボタンクリックイベント
	 */
	public void onClickCancel() {
		finish();
	}

	/**
	 * 生成ボタンクリックイベント
	 */
	public void onClickMakeDir() {
		try {
			SpannableStringBuilder sb = (SpannableStringBuilder) mEdit
					.getText();
			final String foldername = sb.toString();
			final String makePath = mFile.getPath() + "/" + foldername;

			if (!checkOverwriteSave(makePath)) {
				String msg = ERROR_MAKE_OVERWRITE_SAVE;
				Toast toast = Toast.makeText(mParent, msg, Toast.LENGTH_SHORT);
				toast.setGravity(Gravity.CENTER, 0, 0);
				toast.show();
				onClickMakeFolder();
			} else if (checkPath(foldername)) {
				File makeFile = new File(makePath);
				if (!makeFile.exists()) {
					makeFile.mkdir();
				}

				show(mFile.getPath(), mFile.getPath());
			} else {
				String msg = ERROR_MAKE_DIR_NAME_MESSAGE;
				Toast toast = Toast.makeText(mParent, msg, Toast.LENGTH_SHORT);
				toast.setGravity(Gravity.CENTER, 0, 0);
				toast.show();
				onClickMakeFolder();
			}
		} catch (SecurityException se) {
		} catch (Exception e) {
		}
	}

	/**
	 * 一つ上の階層に戻る
	 * 
	 * @param path
	 * @return　戻り先のディレクトリ
	 */
	public String backDirectory(String path) {
		int index = 0;

		while (true) {
			int idx = path.indexOf("/", index) + 1;
			if (idx == -1 || idx == 0) {
				break;
			} else {
				index = idx;
			}
		}

		if (index > 1) {
			index--;
		}

		if (mDefultPath.length() > index) {
			index = path.length();
		}

		return path.substring(0, index);
	}

	/**
	 * リストから選択されたファイルの削除
	 */
	public void deleteListFiles() {
		mDialogFileList = new File(mFile.getPath()).listFiles();
		int i = 1;

		for (File file : mDialogFileList) {
			if (mDeleteFlg[i]) {
				deleteFile(file);
			}
			i++;
		}
	}

	private boolean deleteFile(File files) {
		if (files.isDirectory()) {// ディレクトリの場合
			String[] children = files.list();// ディレクトリにあるすべてのファイルを処理する
			for (int i = 0; i < children.length; i++) {
				boolean success = deleteFile(new File(files, children[i]));
				if (!success) {
					return false;
				}
			}
		}

		// 削除
		return files.delete();
	}

	/**
	 * パスに使用できる文字列かの判断
	 * 
	 * @param path
	 * @return
	 */
	public boolean checkPath(String path) {
		boolean result = true;

		for (int i = 0; i < error_name.length; i++) {
			if (path.indexOf(error_name[i]) != -1) {
				result = false;
			}
		}

		return result;
	}

	/**
	 * 上書き保存になるかのチェック
	 * 
	 * @param path
	 * @return
	 */
	public boolean checkOverwriteSave(String path) {
		boolean result = true;
		mDialogFileList = new File(mFile.getPath()).listFiles();

		for (File file : mDialogFileList) {
			if (path.equals(file.getPath())) {
				result = false;
				break;
			}
		}

		return result;
	}
}
package com.hamamatsu.radiationdetector.file;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

public class iniReadWrite {
	public static String[] read(String filename) {
		/*************** INIファイルを読み込んで、配列に格納する ***************/

		/*************** ファイル読み込み ***************/
		String s = null; // 入力文字列

		// ファイル読み込み
		try {
			File f = new File(filename);
			byte[] b = new byte[(int) f.length()];
			FileInputStream fi = new FileInputStream(f);
			fi.read(b);
			s = new String(b);
		} catch (Exception e) {
			return null;
		}

		/*************** 文字列を分割 ***************/
		s = s.replaceAll("\r", ""); // ￥rがあったとき対策
		String[] strrec = s.split("\n");

		return strrec;
	}

	public static void write(String filename, String[] data) {
		/*************** 配列をINIファイルとして書き込む ***************/
		try {
			File csv = new File(filename); // CSVデータファイル

			BufferedWriter bw = new BufferedWriter(new FileWriter(csv, false)); // 上書きモード
			// 新たなデータ行の追加
			for (int i = 0; i < data.length; i++) {
				bw.write(data[i]);
				bw.newLine();
			}
			bw.flush();
			bw.close();
		} catch (FileNotFoundException e) {
			// Fileオブジェクト生成時の例外捕捉
			e.printStackTrace();
		} catch (IOException e) {
			// BufferedWriterオブジェクトのクローズ時の例外捕捉
			e.printStackTrace();
		}
	}
}

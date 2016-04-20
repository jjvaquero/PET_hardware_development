package com.hamamatsu.radiationdetector.file;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class csvReadWrite {
	public static String[][] read(String filename) {
		/*************** コンマ区切りのCSVファイルを読み込んで、多次元配列に格納する ***************/

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

		// 文字列を検索する
		String item = ",";
		Pattern pattern = Pattern.compile(item);
		Matcher matcher = pattern.matcher(strrec[0]);
		int hitCount = 0;
		while (matcher.find()) {
			hitCount++;
		}

		hitCount++; // 配列の大きさにするため
		String[] rec = new String[hitCount];
		String[][] strfin = new String[strrec.length][hitCount];

		for (int i = 0; i < strrec.length; i++) {
			rec = strrec[i].split(",");
			for (int k = 0; k < hitCount; k++) {
				strfin[i][k] = rec[k];
			}
		}

		return strfin;
	}

	public static void write(String filename, String[][] data) {
		/*************** 多次元配列をコンマ区切りのCSVファイルとして書き込む ***************/
		try {
			File csv = new File(filename); // CSVデータファイル

			String tmp;
			BufferedWriter bw = new BufferedWriter(new FileWriter(csv, true)); // 追記モード
			// 新たなデータ行の追加
			for (int i = 0; i < data.length; i++) {
				tmp = data[i][0]; // 1列目を代入
				// 2列目以降を追加
				for (int k = 1; k < data[0].length; k++) {
					tmp += ",";
					tmp += data[i][k];
				}
				bw.write(tmp);
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

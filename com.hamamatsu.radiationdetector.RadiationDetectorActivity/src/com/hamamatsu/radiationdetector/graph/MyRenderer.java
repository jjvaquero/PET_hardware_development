package com.hamamatsu.radiationdetector.graph;

import java.math.BigDecimal;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

import com.hamamatsu.radiationdetector.Global;

import android.graphics.Color;
import android.opengl.GLSurfaceView.Renderer;

public class MyRenderer implements Renderer {
	static final int DATA_ARRAY_ELEMENT_COUNT = 4096;
	private static final float GRAPH_X_LABEL_AREA = 0.1f;
	private static final float GRAPH_Y_LABEL_AREA = 0.2f;
	private static final float GRAPH_LINE_AREA = 1.1f;

	public static final int PLOT_MODE_ENERGY = 1;
	public static final int PLOT_MODE_TIME = 2;
	public static final int PLOT_MODE_FREQUENCY = 3;

	public static final int FONT_SIZE_NUMBER = 32;
	public static final int FONT_SIZE_LABEL = 28;

	public static final int MODE_ENERGY = 0;
	public static final int MODE_TIME = 1;
	public static final int MODE_DISTRIBUTION = 2;

	private int mWidth;
	private int mHeight;
	private int mPlotMode;
	private boolean mEnergyScale;
	private float[] mEnergyXVertices = new float[DATA_ARRAY_ELEMENT_COUNT];
	private float[] mEnergyYVertices = new float[DATA_ARRAY_ELEMENT_COUNT];;
	private float[] mTimeXVertices = new float[DATA_ARRAY_ELEMENT_COUNT];
	private float[] mTimeYVertices = new float[DATA_ARRAY_ELEMENT_COUNT];
	private float mEnergyYMaxVal;
	private float mTimeXMaxVal;
	private float mTimeXMinVal;
	private float mTimeYMaxVal;
	private int mUnit;
	private int mFPSCount;

	private Texture mTextureXLabel[] = new Texture[2];
	private Texture mTextureYLabel[] = new Texture[3];
	private Texture mTextureNumber[] = new Texture[11];

	public MyRenderer() {
		mEnergyScale = false;
		mPlotMode = 0;
		mUnit = 0;
		mEnergyYMaxVal = 100.0f;
		mTimeYMaxVal = 20.0f;
		mTimeXMaxVal = 200.0f;
		mTimeXMinVal = 0.0f;
	}

	/*
	 * 描画メソッド
	 */
	public void renderMain(GL10 gl) {
		switch (mPlotMode) {
		case PLOT_MODE_ENERGY:
			EnergyPraphPlot(gl);
			break;
		case PLOT_MODE_TIME:
			if (mTimeYMaxVal > 0.001) {
				TimeGraphPlot(gl);
			}
			break;
		case PLOT_MODE_FREQUENCY:
			break;
		default:
			break;
		}
	}

	public void onDrawFrame(GL10 gl) {
		gl.glViewport(0, 0, mWidth, mHeight);
		gl.glMatrixMode(GL10.GL_PROJECTION);

		gl.glLoadIdentity();
		gl.glOrthof((0.0f - GRAPH_X_LABEL_AREA),
				(1.0f + (GRAPH_X_LABEL_AREA / 2)), (0.0f - GRAPH_Y_LABEL_AREA),
				(1.0f + (GRAPH_Y_LABEL_AREA / 2)), 0.5f, -0.5f);
		gl.glMatrixMode(GL10.GL_MODELVIEW);
		gl.glLoadIdentity();

		gl.glClearColor(1.0f, 1.0f, 1.0f, 1.0f);
		gl.glClear(GL10.GL_COLOR_BUFFER_BIT);

		renderMain(gl);

		// FPSの制御を行う
		try {
			Thread.sleep(125);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}


	public void onSurfaceChanged(GL10 gl, int width, int height) {
		mWidth = width;
		mHeight = height;

		mTextureXLabel[0] = GraphicUtil.makeTexture(gl, "エネルギー [keV]",
				FONT_SIZE_LABEL, Color.BLACK);
		mTextureXLabel[1] = GraphicUtil.makeTexture(gl, "1sec/point",
				FONT_SIZE_LABEL, Color.BLACK);
		mTextureYLabel[0] = GraphicUtil.makeTexture(gl, "検出頻度",
				FONT_SIZE_LABEL, Color.BLACK, -90.0f);
		mTextureYLabel[1] = GraphicUtil.makeTexture(gl, "μSv/h",
				FONT_SIZE_LABEL, Color.RED, -90.0f);
		mTextureYLabel[2] = GraphicUtil.makeTexture(gl, "mSv/h",
				FONT_SIZE_LABEL, Color.RED, -90.0f);
		mTextureNumber[0] = GraphicUtil.makeTexture(gl, "0", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[1] = GraphicUtil.makeTexture(gl, "1", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[2] = GraphicUtil.makeTexture(gl, "2", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[3] = GraphicUtil.makeTexture(gl, "3", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[4] = GraphicUtil.makeTexture(gl, "4", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[5] = GraphicUtil.makeTexture(gl, "5", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[6] = GraphicUtil.makeTexture(gl, "6", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[7] = GraphicUtil.makeTexture(gl, "7", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[8] = GraphicUtil.makeTexture(gl, "8", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[9] = GraphicUtil.makeTexture(gl, "9", FONT_SIZE_NUMBER,
				Color.BLACK);
		mTextureNumber[10] = GraphicUtil.makeTexture(gl, ".", FONT_SIZE_NUMBER,
				Color.BLACK);

		Global.gl = gl;
	}


	public void onSurfaceCreated(GL10 gl, EGLConfig config) {
	}

	//
	//
	//
	public void ChangeScale() {
		if (mPlotMode == PLOT_MODE_ENERGY) {
			mEnergyScale = !mEnergyScale;
		}
	}

	public void setPlotMode(int mode) {
		mPlotMode = mode;
	}

	public void setEnergyXVertices(float vertices[]) {
		setEnergyXVertices(vertices, 0.0f, 0.0f);
	}

	public void setEnergyXVertices(float vertices[], float max) {
		setEnergyXVertices(vertices, max, 0.0f);
	}

	public void setEnergyXVertices(float vertices[], float max, float min) {
		mEnergyXVertices = vertices;
	}

	public void setEnergyYVertices(float vertices[]) {
		setEnergyYVertices(vertices, 0.0f, 0.0f);
	}

	public void setEnergyYVertices(float vertices[], float max) {
		setEnergyYVertices(vertices, max, 0.0f);
	}

	public void setEnergyYVertices(float vertices[], float max, float min) {
		mEnergyYVertices = vertices;
		mEnergyYMaxVal = max * GRAPH_LINE_AREA;
	}

	public void setTimeXVertices(float vertices[], float max) {
		setTimeXVertices(vertices, max, 0);
	}

	public void setTimeXVertices(float vertices[], float max, float min) {
		mTimeXVertices = vertices;
		mTimeXMaxVal = max;
		mTimeXMinVal = min;
	}

	public void setTimeYVertices(float vertices[], float max) {
		setTimeYVertices(vertices, max, 0);
	}

	public void setTimeYVertices(float vertices[], float max, float min) {
		mTimeYVertices = vertices;
		mTimeYMaxVal = max * GRAPH_LINE_AREA;
	}

	public void setState(int unit) {
		mUnit = unit;
	}

	private void drawNumber(GL10 gl, int number, float x, float y) {
		String strNum = String.valueOf(number);
		int length = strNum.length();

		float reviseX = +0.01f;
		for (int i = 0; i < length; i++) {
			String str = strNum.substring(((length - i) - 1),
					(((length + 1) - i) - 1));
			int idx = convertDrawNumber(str);

			GraphicUtil.drawTexture(gl, mTextureNumber[idx], (x + reviseX), y,
					mWidth, mHeight);
			reviseX -= 0.02f;
		}
	}

	private void drawNumber(GL10 gl, float number, float x, float y) {
		String strNum = String.valueOf(number);
		BigDecimal dNumber = new BigDecimal(strNum);
		strNum = String.valueOf(dNumber.setScale(3, BigDecimal.ROUND_HALF_UP));
		int point = -1;

		for (int i = 0; i < strNum.length(); i++) {
			String str = strNum.substring(i, i + 1);

			if (point != -1 && str.indexOf("0") == -1) {
				point = i;
			}

			if (str.indexOf(".") != -1) {
				point = i - 1;
			}
		}

		float reviseX = 0.005f + (float) (0.005 * (point - 1));
		for (int i = 0; i < (point + 1); i++) {
			String str = strNum.substring((point - i), ((point + 1) - i));
			int idx = convertDrawNumber(str);

			GraphicUtil.drawTexture(gl, mTextureNumber[idx], (x + reviseX), y,
					mWidth, mHeight);
			reviseX -= 0.02f;
		}
	}

	private int convertDrawNumber(String Number) {
		int result = 0;

		if (Number.indexOf("0") != -1) {
			result = 0;
		} else if (Number.indexOf("1") != -1) {
			result = 1;
		} else if (Number.indexOf("2") != -1) {
			result = 2;
		} else if (Number.indexOf("3") != -1) {
			result = 3;
		} else if (Number.indexOf("4") != -1) {
			result = 4;
		} else if (Number.indexOf("5") != -1) {
			result = 5;
		} else if (Number.indexOf("6") != -1) {
			result = 6;
		} else if (Number.indexOf("7") != -1) {
			result = 7;
		} else if (Number.indexOf("8") != -1) {
			result = 8;
		} else if (Number.indexOf("9") != -1) {
			result = 9;
		} else {
			result = 10;
		}

		return result;
	}

	/*
	 * エネルギーグラフ描画
	 */
	private void EnergyPraphPlot(GL10 gl) {
		float width = (float) mWidth;
		float height = (float) mHeight;
		float xIni[] = { 0.0f, 1.0f };
		float yIni[] = { 0.0f, 1.0f };
		float xpoint = (5 / width);
		float ypoint = (5 / height);

		// グラフのＹ軸スケール決定 CreateChartMainAndChartEnergyより移植
		int drawLength = 0;
		float VerticesX[] = null;
		float VerticesY[] = null;
		float VerticesYMax = 0;
		if (mEnergyYVertices != null && mEnergyXVertices != null) {
			drawLength = mEnergyXVertices.length;
			VerticesX = new float[drawLength];
			VerticesY = new float[drawLength];
			VerticesYMax = 0;
			for (int i = 0; i < drawLength; i++) {
				if (mEnergyXVertices[i] >= 10 && mEnergyXVertices[i] <= 2000) {
					VerticesX[i] = mEnergyXVertices[i];
					VerticesY[i] = mEnergyYVertices[i];
					if (VerticesYMax < mEnergyYVertices[i]) {
						VerticesYMax = mEnergyYVertices[i];
					}
				} else {
					VerticesX[i] = Float.MAX_VALUE;
					VerticesY[i] = Float.MAX_VALUE;
				}
			}
		}

		if (VerticesYMax == 0) {
			VerticesYMax = mEnergyYMaxVal;
		}

		// オートスケール
		float yMax;
		float yMin;
		float y[] = new float[2];
		BigDecimal bi = new BigDecimal(VerticesYMax);
		int ans = bi.setScale(0, BigDecimal.ROUND_DOWN).intValue() * 10;
		int length = String.valueOf(ans).length() - 1;
		yMax = (float) Math.pow(10, length);

		// 横軸
		yMin = (float) Math.log(1);
		yMax = (float) Math.log((int) yMax * 2) - yMin;
		GraphicUtil.drawTexture(gl, mTextureXLabel[0], 0.5f,
				(-GRAPH_Y_LABEL_AREA + 0.03f), mWidth, mHeight);

		for (int i = 0; i <= length; i++) {
			float ini = (float) Math.pow(10, i);
			for (int z = 0; z < 10; z++) {
				float point = ((float) Math.log(ini * (z + 1)) - yMin) / yMax;

				y[0] = point;
				y[1] = point;
				GraphicUtil.drawLine(gl, xIni, y, 2);
				if (z == 0) {
					int num = (int) ini;

					xIni[0] -= xpoint;
					GraphicUtil.drawLine(gl, xIni, y, 2);
					xIni[0] += xpoint;
					drawNumber(gl, num, -(GRAPH_X_LABEL_AREA / 3.0f), y[0]);
				}

				if (i == length && z == 1) {
					break;
				}
			}
		}

		// 縦軸
		float x[] = new float[2];
		float xMin = (float) Math.log(10);
		float xMax = (float) Math.log(2000) - xMin;
		GraphicUtil.drawTexture(gl, mTextureYLabel[0],
				(-GRAPH_X_LABEL_AREA + 0.02f), 0.5f, mWidth, mHeight);
		if (mEnergyScale) {
			xMin = 0.0f;
			xMax = 2000.0f;

			for (float i = 0.0f; i <= 2000.0f; i += 100.0f) {
				float point = i / xMax;

				x[0] = point;
				x[1] = point;
				GraphicUtil.drawLine(gl, x, yIni, 2);
				if ((i % 200.0f) == 0.0f) {
					yIni[0] -= ypoint;
					GraphicUtil.drawLine(gl, x, yIni, 2);
					yIni[0] += ypoint;
					drawNumber(gl, i, x[0], -(GRAPH_Y_LABEL_AREA / 2.0f));
				}
			}
		} else {
			for (int i = 1; i <= 3; i++) {
				float ini = (float) Math.pow(10, i);
				for (int z = 0; z < 10; z++) {
					float point = ((float) Math.log(ini * (z + 1)) - xMin)
							/ xMax;

					x[0] = point;
					x[1] = point;
					GraphicUtil.drawLine(gl, x, yIni, 2);
					if (z == 0) {
						int num = (int) ini;

						yIni[0] -= ypoint;
						GraphicUtil.drawLine(gl, x, yIni, 2);
						yIni[0] += ypoint;
						drawNumber(gl, num, x[0], -(GRAPH_Y_LABEL_AREA / 2.0f));
					}
				}
			}
		}

		// ポイント描画
		if (VerticesX != null && VerticesY != null) {
			float drawY[] = new float[drawLength];
			float drawX[] = new float[drawLength];

			for (int i = 0; i < drawLength; i++) {
				drawY[i] = ((float) Math.log(VerticesY[i] - yMin) / yMax);
				if (mEnergyScale) {
					drawX[i] = VerticesX[i] / xMax;
				} else {
					drawX[i] = ((float) Math.log(VerticesX[i]) - xMin) / xMax;
				}
			}
			GraphicUtil.drawPoint(gl, drawX, drawY, drawLength, 5, 1.0f, 0.0f,
					0.0f, 1.0f);
		}
	}

	/*
	 * 時間変化グラフ描画
	 */
	private void TimeGraphPlot(GL10 gl) {
		final int IntegerNumber = 100000;
		float width = (float) mWidth;
		float height = (float) mHeight;
		float xIni[] = { 0.0f, 1.0f };
		float yIni[] = { 0.0f, 1.0f };
		xIni[0] -= (5 / width);
		yIni[0] -= (5 / height);
		float yMax = 0.0f;
		int cnt = 0;

		// オートスケール
		int ymeas = (int) (mTimeYMaxVal * IntegerNumber);
		int length = String.valueOf(ymeas).length() - 1;
		BigDecimal bi = new BigDecimal((ymeas / Math.pow(10, length)));
		float ans = bi.setScale(1, BigDecimal.ROUND_UP).floatValue();
		if (ans > 8.0f && ans <= 10.0f) {
			yMax = (float) ((10 * Math.pow(10, length)) / IntegerNumber);
			cnt = 6;
		} else if (ans > 6.0f && ans <= 8.0f) {
			yMax = (float) ((8 * Math.pow(10, length)) / IntegerNumber);
			cnt = 9;
		} else if (ans > 5.0f && ans <= 6.0f) {
			yMax = (float) ((6 * Math.pow(10, length)) / IntegerNumber);
			cnt = 7;
		} else if (ans > 3.5f && ans <= 5.0f) {
			yMax = (float) ((5 * Math.pow(10, length)) / IntegerNumber);
			cnt = 6;
		} else if (ans > 2.5f && ans <= 3.5f) {
			yMax = (float) ((3.5 * Math.pow(10, length)) / IntegerNumber);
			cnt = 8;
		} else if (ans > 2.0f && ans <= 2.5f) {
			yMax = (float) ((2.5 * Math.pow(10, length)) / IntegerNumber);
			cnt = 6;
		} else if (ans > 1.2f && ans <= 2.0f) {
			yMax = (float) ((2 * Math.pow(10, length)) / IntegerNumber);
			cnt = 5;
		} else if (ans > 0.0f && ans <= 1.2f) {
			yMax = (float) ((1.2 * Math.pow(10, length)) / IntegerNumber);
			cnt = 7;
		}

		// 横軸
		GraphicUtil.drawTexture(gl, mTextureXLabel[1], 0.5f,
				(-GRAPH_Y_LABEL_AREA + 0.03f), mWidth, mHeight);
		float y[] = new float[2];
		for (int i = 0; i < cnt; i++) {
			float point = (float) i / (cnt - 1);
			y[0] = point;
			y[1] = point;
			GraphicUtil.drawLine(gl, xIni, y, 2);

			float num = (yMax / (cnt - 1)) * i;
			drawNumber(gl, num, -(GRAPH_X_LABEL_AREA / 2.0f),
					((yIni[1] / (cnt - 1)) * i));
		}

		// 縦軸
		GraphicUtil.drawTexture(gl, mTextureYLabel[mUnit + 1],
				(-GRAPH_X_LABEL_AREA + 0.02f), 0.5f, mWidth, mHeight);
		float x[] = new float[2];
		for (int i = 0; i < 5; i++) {
			float point = (float) i / 4;

			x[0] = point;
			x[1] = point;
			GraphicUtil.drawLine(gl, x, yIni, 2);

			int num = (int) (mTimeXMinVal + ((mTimeXMaxVal - mTimeXMinVal) / 4)
					* i);
			drawNumber(gl, num, ((xIni[1] / 4) * i),
					-(GRAPH_Y_LABEL_AREA / 2.0f));
		}

		// ライン描画
		if (mTimeYVertices != null && mTimeXVertices != null) {
			length = 0;
			if (mTimeXMaxVal < mTimeXVertices.length) {
				for (int i = 0; i < mTimeXVertices.length; i++) {
					if (mTimeXVertices[i] == 0) {
						length = i;
						break;
					}
				}
			} else {
				if (mTimeXVertices.length < mTimeYVertices.length) {
					length = mTimeXVertices.length;
				} else {
					length = mTimeYVertices.length;
				}
			}

			float drawY[] = new float[length];
			float drawX[] = new float[length];

			for (int i = 0; i < length; i++) {
				drawY[i] = (mTimeYVertices[i] / yMax);
				drawX[i] = (mTimeXVertices[i] - mTimeXMinVal)
						/ (mTimeXMaxVal - mTimeXMinVal);
			}

			GraphicUtil.drawLine(gl, drawX, drawY, length, 2, 1.0f, 0.0f, 0.0f,
					1.0f);
		}
	}

	public int getFpsCount() {
		return mFPSCount;
	}

	public void resetFpsCount() {
		mFPSCount = 0;
	}
}
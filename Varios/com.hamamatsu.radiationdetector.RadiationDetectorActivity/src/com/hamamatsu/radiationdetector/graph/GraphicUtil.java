package com.hamamatsu.radiationdetector.graph;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import javax.microedition.khronos.opengles.GL10;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;

public class GraphicUtil {
	/**
	 * バッファの生成
	 * 
	 * @param arr
	 * @return
	 */
	public static final FloatBuffer makeFloatBuffer(float[] arr) {
		ByteBuffer bb = ByteBuffer.allocateDirect(arr.length * 4);
		bb.order(ByteOrder.nativeOrder());
		FloatBuffer fb = bb.asFloatBuffer();
		fb.put(arr);
		fb.position(0);

		return fb;
	}

	// /////////////////////////////////////////////////////////////////////////////
	// Draw
	/**
	 * ポイント描画
	 * 
	 * @param gl
	 * @param x
	 * @param y
	 * @param length
	 * @param pointsize
	 * @param r
	 * @param g
	 * @param b
	 * @param a
	 */
	public static final void drawPoint(GL10 gl, float x[], float y[],
			int length, int pointsize, float r, float g, float b, float a) {
		float[] vertices = new float[length * 2];
		for (int i = 0; i < length; i++) {
			vertices[i * 2 + 0] = x[i];
			vertices[i * 2 + 1] = y[i];
		}

		float[] colors = new float[length * 4];
		for (int i = 0; i < length; i++) {
			colors[i * 4 + 0] = r;
			colors[i * 4 + 1] = g;
			colors[i * 4 + 2] = b;
			colors[i * 4 + 3] = a;
		}

		FloatBuffer lineVertices = makeFloatBuffer(vertices);
		FloatBuffer lineColors = makeFloatBuffer(colors);

		gl.glBindTexture(GL10.GL_TEXTURE_2D, 0);
		gl.glVertexPointer(2, GL10.GL_FLOAT, 0, lineVertices);
		gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
		gl.glColorPointer(4, GL10.GL_FLOAT, 0, lineColors);
		gl.glEnableClientState(GL10.GL_COLOR_ARRAY);

		gl.glPointSize(pointsize);
		gl.glDrawArrays(GL10.GL_POINTS, 0, length);
	}

	/**
	 * ポイント描画(色黒固定)
	 * 
	 * @param gl
	 * @param x
	 * @param y
	 * @param length
	 * @param pointsize
	 */
	public static final void drawPoint(GL10 gl, float x[], float y[],
			int length, int pointsize) {
		drawPoint(gl, x, y, length, pointsize, 0.0f, 0.0f, 0.0f, 1.0f);
	}

	/**
	 * ポイント描画(座標指定)
	 * 
	 * @param gl
	 * @param x
	 * @param y
	 * @param length
	 */
	public static final void drawPoint(GL10 gl, float x[], float y[], int length) {
		drawPoint(gl, x, y, length, 1);
	}

	/**
	 * ライン描画
	 * 
	 * @param gl
	 * @param x
	 * @param y
	 * @param length
	 * @param pointsize
	 * @param r
	 * @param g
	 * @param b
	 * @param a
	 */
	public static final void drawLine(GL10 gl, float[] x, float[] y,
			int length, int pointsize, float r, float g, float b, float a) {

		float[] vertices = new float[length * 2];
		for (int i = 0; i < length; i++) {
			vertices[i * 2 + 0] = x[i];
			vertices[i * 2 + 1] = y[i];
		}

		float[] colors = new float[length * 4];
		for (int i = 0; i < length; i++) {
			colors[i * 4 + 0] = r;
			colors[i * 4 + 1] = g;
			colors[i * 4 + 2] = b;
			colors[i * 4 + 3] = a;
		}

		FloatBuffer lineVertices = makeFloatBuffer(vertices);
		FloatBuffer lineColors = makeFloatBuffer(colors);

		gl.glBindTexture(GL10.GL_TEXTURE_2D, 0);
		gl.glVertexPointer(2, GL10.GL_FLOAT, 0, lineVertices);
		gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
		gl.glColorPointer(4, GL10.GL_FLOAT, 0, lineColors);
		gl.glEnableClientState(GL10.GL_COLOR_ARRAY);

		gl.glPointSize(pointsize);
		gl.glLineWidth(pointsize);
		gl.glDrawArrays(GL10.GL_LINE_STRIP, 0, length);
		gl.glDrawArrays(GL10.GL_POINTS, 0, length);
	}

	/**
	 * ライン描画(色黒固定)
	 * 
	 * @param gl
	 * @param x
	 * @param y
	 * @param length
	 * @param pointsize
	 */
	public static final void drawLine(GL10 gl, float x[], float y[],
			int length, int pointsize) {
		drawLine(gl, x, y, length, pointsize, 0.0f, 0.0f, 0.0f, 1.0f);
	}

	/**
	 * ライン描画(座標指定)
	 * 
	 * @param gl
	 * @param x
	 * @param y
	 * @param length
	 */
	public static final void drawLine(GL10 gl, float x[], float y[], int length) {
		drawLine(gl, x, y, length, 1);
	}

	/**
	 * テクスチャの描画
	 * 
	 * @param gl
	 * @param texture
	 * @param x
	 * @param y
	 * @param windWidth
	 * @param windHeight
	 */
	public static final void drawTexture(GL10 gl, Texture texture, float x,
			float y, int windWidth, int windHeight) {
		float width = (float) texture.texWidth / (float) windWidth;
		float height = (float) texture.texHeight / (float) windHeight;
		float tex_w = (float) texture.texWidth / (float) texture.width;
		float tex_h = (float) texture.texHeight / (float) texture.height;

		float[] vertices = { -0.5f * width + x, -0.5f * height + y,
				0.5f * width + x, -0.5f * height + y, -0.5f * width + x,
				0.5f * height + y, 0.5f * width + x, 0.5f * height + y, };
		float[] colors = { 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f,
				1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, };

		float[] coords = { 0.0f, tex_h, tex_w, tex_h, 0.0f, 0.0f, tex_w, 0.0f, };

		FloatBuffer polygonVertices = makeFloatBuffer(vertices);
		FloatBuffer polygonColors = makeFloatBuffer(colors);
		FloatBuffer texCoords = makeFloatBuffer(coords);

		gl.glEnable(GL10.GL_TEXTURE_2D);
		gl.glBlendFunc(GL10.GL_SRC_ALPHA, GL10.GL_ONE_MINUS_SRC_ALPHA);
		gl.glEnable(GL10.GL_BLEND);
		gl.glEnable(GL10.GL_POINT_SMOOTH);

		gl.glBindTexture(GL10.GL_TEXTURE_2D, texture.name);
		gl.glVertexPointer(2, GL10.GL_FLOAT, 0, polygonVertices);
		gl.glEnableClientState(GL10.GL_VERTEX_ARRAY);
		gl.glColorPointer(4, GL10.GL_FLOAT, 0, polygonColors);
		gl.glEnableClientState(GL10.GL_COLOR_ARRAY);
		gl.glTexCoordPointer(2, GL10.GL_FLOAT, 0, texCoords);
		gl.glEnableClientState(GL10.GL_TEXTURE_COORD_ARRAY);

		gl.glDrawArrays(GL10.GL_TRIANGLE_STRIP, 0, 4);

		gl.glDisableClientState(GL10.GL_TEXTURE_COORD_ARRAY);
		gl.glDisable(GL10.GL_BLEND);
		gl.glDisable(GL10.GL_POINT_SMOOTH);
		gl.glDisable(GL10.GL_TEXTURE_2D);
	}

	// //////////////////////////////////////////////////////////////////////
	// Texture
	/**
	 * 登録済みテクスチャの破棄
	 * 
	 * @param gl
	 * @param texture
	 */
	public static final void deleteTexture(GL10 gl, Texture texture) {
		int texId[] = new int[1];
		texId[0] = texture.name;

		gl.glDeleteTextures(1, texId, 0);
	}

	/**
	 * テクスチャの生成
	 * 
	 * @param gl
	 * @param bitmap
	 * @return
	 */
	public static final Texture makeTexture(GL10 gl, Bitmap bitmap) {
		// リサイズ
		int w = (bitmap.getWidth() > bitmap.getHeight()) ? bitmap.getWidth()
				: bitmap.getHeight();
		int size = 32;
		for (; size < 1024; size *= 2) {
			if (w <= size)
				break;
		}
		Bitmap result = resizeBitmap(bitmap, size, size);

		// 画像データの生成
		ByteBuffer bb = ByteBuffer.allocateDirect(size * size * 4);
		bb.order(ByteOrder.BIG_ENDIAN);
		IntBuffer ib = bb.asIntBuffer();
		for (int y = result.getHeight() - 1; y > -1; y--) {
			for (int x = 0; x < result.getWidth(); x++) {
				int pix = result.getPixel(x, (result.getHeight() - y - 1));
				int alpha = ((pix >> 24) & 0xFF);
				int red = ((pix >> 16) & 0xFF);
				int green = ((pix >> 8) & 0xFF);
				int blue = ((pix) & 0xFF);
				ib.put((red << 24) + (green << 16) + (blue << 8) + alpha);
			}
		}
		ib.position(0);
		bb.position(0);
		int[] textureName = new int[1];

		// テクスチャの設定
		gl.glGenTextures(1, textureName, 0);
		gl.glBindTexture(GL10.GL_TEXTURE_2D, textureName[0]);
		gl.glTexImage2D(GL10.GL_TEXTURE_2D, 0, GL10.GL_RGBA, result.getWidth(),
				result.getHeight(), 0, GL10.GL_RGBA, GL10.GL_UNSIGNED_BYTE, bb);
		gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MAG_FILTER,
				GL10.GL_LINEAR);
		gl.glTexParameterf(GL10.GL_TEXTURE_2D, GL10.GL_TEXTURE_MIN_FILTER,
				GL10.GL_LINEAR);

		// テクスチャオブジェクトの生成
		Texture texture = new Texture();
		texture.name = textureName[0];
		texture.width = result.getWidth();
		texture.height = result.getHeight();
		texture.texWidth = bitmap.getWidth();
		texture.texHeight = bitmap.getHeight();
		texture.size = size;
		return texture;
	}

	public static final Texture makeTexture(GL10 gl, String text, int size,
			int color) {
		return makeTexture(gl, text, size, color, 0.0f);
	}

	/**
	 * 文字テクスチャの生成
	 * 
	 * @param gl
	 * @param text
	 * @param size
	 * @param color
	 * @param degrees
	 * @return
	 */
	public static final Texture makeTexture(GL10 gl, String text, int size,
			int color, float degrees) {
		Texture result;
		Paint paint = new Paint();
		paint.setAntiAlias(true);
		paint.setTextSize(size);
		paint.setColor(color);

		int w = (int) paint.measureText(text);
		int h = (int) (paint.descent() - paint.ascent());
		Bitmap bmp = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
		Canvas canvas = new Canvas(bmp);
		canvas.drawText(text, 0, (int) -paint.ascent(), paint);
		Bitmap rBmp = rotateBitmap(bmp, degrees);
		result = makeTexture(gl, rBmp);
		bmp.recycle(); // VM上のbitmapを開放

		return result;
	}

	/**
	 * ビットマップのリサイズ
	 * 
	 * @param bmp
	 * @param w
	 * @param h
	 * @return
	 */
	public static final Bitmap resizeBitmap(Bitmap bmp, int w, int h) {
		Bitmap result = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
		Canvas canvas = new Canvas(result);
		BitmapDrawable drawable = new BitmapDrawable(bmp);
		drawable.setBounds(0, 0, bmp.getWidth(), bmp.getHeight());
		drawable.draw(canvas);

		return result;
	}

	/**
	 * ビットマップの回転
	 * 
	 * @param bmp
	 * @param degrees
	 * @return
	 */
	public static final Bitmap rotateBitmap(Bitmap bmp, float degrees) {
		Matrix matrix = new Matrix();
		matrix.setRotate(degrees);
		Bitmap result = Bitmap.createBitmap(bmp, 0, 0, bmp.getWidth(),
				bmp.getHeight(), matrix, false);

		return result;
	}
}
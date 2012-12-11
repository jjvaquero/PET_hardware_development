package hggm.lim.graf_detector;

import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.app.Activity;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.LinearLayout;

public class MainActivity extends Activity implements 
OnTouchListener,OnGestureListener, OnDoubleTapListener {
	
	private MyRender mRenderer;
	private GLSurfaceView mGlSurfaceView;
	private LinearLayout mLayGL;
	private float[] ListX, ListY;
	private GestureDetector mGestureDetector;


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        
        //creo la grafica como los japos
       mGestureDetector = new GestureDetector(this, this);
     // GL Graph
       mRenderer = new MyRender();
       mRenderer.setPlotMode(MyRender.PLOT_MODE_ENERGY);
       mGlSurfaceView = new GLSurfaceView(this);
       mGlSurfaceView.setRenderer(mRenderer);
       mLayGL = (LinearLayout) findViewById(R.id.layout1);
       mLayGL.addView(mGlSurfaceView);
       mLayGL.setOnTouchListener(this);
       ListX = new float[4096];
       ListY = new float[4096];
       
       for (int i = 0; i<4096; i ++)
       {
    	    ListX[i] = i;
    	    ListY[i] = (float)histogram.histograma[i]*100;
    	}
       
      
       
       
       mRenderer.setEnergyXVertices(ListX);
	   mRenderer.setEnergyYVertices(ListY);
	   mRenderer.ChangeScale();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
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

	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		// TODO Auto-generated method stub
		return false;
	}
    
}

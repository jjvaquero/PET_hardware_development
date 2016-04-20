package com.hamamatsu.radiationdetector;

import android.app.Activity;
import android.app.FragmentTransaction;
import android.app.ListFragment;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class SettingListActivity extends Activity {
	public static final String KEY = "index";
	public static final String[] ITEMS = { "アプリ設定", "HVPS module情報",
			"EEPROM 温度制御", "EEPROM その他" };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
		setContentView(R.layout.setting);
	}

	public static class SettingListFragment extends ListFragment {
		private int pos = -1;

		@Override
		public void onActivityCreated(Bundle savedInstanceState) {
			super.onActivityCreated(savedInstanceState);
			setListAdapter(new ArrayAdapter<String>(getActivity(),
					android.R.layout.simple_list_item_1, ITEMS));
			getListView().setChoiceMode(ListView.CHOICE_MODE_SINGLE);

			if (isTablet(getActivity())) {
				showDetails(0);
			}
		}

		@Override
		public void onListItemClick(ListView l, View v, int pos, long id) {
			showDetails(pos);
		}

		private void showDetails(int index) {
			Context context = getActivity().getApplication();

			if (isTablet(context)) {
				getListView().setItemChecked(index, true);
				if (pos == index) {
					return;
				}
				SettingDetailActivity.DetailsFragment fragment = SettingDetailActivity.DetailsFragment
						.newInstance(index);
				FragmentTransaction ft = getFragmentManager()
						.beginTransaction();
				ft.replace(R.id.details, fragment);
				ft.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
				ft.commit();
				pos = index;
			} else {
				if (index == 0) {
					getListView().setItemChecked(index, false);
					Intent intent = new Intent(context,
							SettingDetailActivity.class);
					intent.putExtra(KEY, index);
					getActivity().startActivity(intent);
				}
			}
		}
	}

	public static boolean isTablet(Context context) {
		return (context.getResources().getConfiguration().screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) == Configuration.SCREENLAYOUT_SIZE_XLARGE;
	}
}

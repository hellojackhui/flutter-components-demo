package com.example.flutter_components_demo;

import android.content.Context;
import android.graphics.Color;
import android.view.View;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformView;

public class SimpleViewControl implements PlatformView {
    private final View view;//缓存原生视图
    public SimpleViewControl(Context context, int id, BinaryMessenger messenger) { view = new View(context); view.setBackgroundColor(Color.rgb(255, 0, 0)); }
    @Override
    public View getView() {
        return view;
    }

    @Override
    public void dispose() {

    }
}

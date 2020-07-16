package com.example.flutter_components_demo;

import android.content.Context;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

public class SampleViewFactory extends PlatformViewFactory {
    private final MessageCodec messageCodec;

    /**
     * @param createArgsCodec the codec used to decode the args parameter of {@link #create}.
     */
    public SampleViewFactory(MessageCodec<Object> createArgsCodec) {
        super(createArgsCodec);
        messageCodec = createArgsCodec;
    }

    @Override
    public PlatformView create(Context context, int viewId, Object args) {
        return new SimpleViewControl(context, viewId, (BinaryMessenger) args);
    }
}


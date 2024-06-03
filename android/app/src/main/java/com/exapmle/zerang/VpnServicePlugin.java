package com.example.zerang;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import android.util.Log;

public class VpnServicePlugin implements FlutterPlugin, MethodCallHandler, ActivityAware {
    private static final String TAG = "VpnServicePlugin";
    private MethodChannel channel;
    private Context context;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        Log.d(TAG, "onAttachedToEngine called");  // Debug log added here
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "com.example.vpn/vpn");
        channel.setMethodCallHandler(this);
        context = flutterPluginBinding.getApplicationContext();
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        Log.d(TAG, "onMethodCall called with method: " + call.method);  // Debug log added here
        if (call.method.equals("startVPN")) {
            Log.d(TAG, "Received startVPN method call");
            Intent intent = new Intent(context, MyVpnService.class);
            context.startService(intent);
            result.success(null);
        } else {
            result.notImplemented();
        }
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    @Override
    public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) { }

    @Override
    public void onDetachedFromActivityForConfigChanges() { }

    @Override
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) { }

    @Override
    public void onDetachedFromActivity() { }
}

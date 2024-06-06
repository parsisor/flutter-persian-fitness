package com.example.zerang;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.VpnService;
import android.os.ParcelFileDescriptor;
import android.util.Log;

public class MyVpnService extends VpnService {
    private static final String TAG = "MyVpnService";
    private static final int VPN_REQUEST_CODE = 100;

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "onStartCommand called");

        if (VpnService.prepare(this) != null) {
            Log.d(TAG, "VPN preparation required");
            Intent vpnIntent = VpnService.prepare(this);
            PendingIntent pendingIntent = PendingIntent.getActivity(this, VPN_REQUEST_CODE, vpnIntent, PendingIntent.FLAG_UPDATE_CURRENT);
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                Log.e(TAG, "PendingIntent canceled", e);
            }
            return START_NOT_STICKY;
        }

        Builder builder = new Builder();
        builder.addAddress("10.0.0.2", 24);
        builder.addRoute("0.0.0.0", 0);
        builder.addDnsServer("10.202.10.202");
        builder.addDnsServer("10.202.10.102");

        ParcelFileDescriptor vpnInterface = builder.establish();
        if (vpnInterface != null) {
            Log.d(TAG, "VPN successfully established");
            return START_STICKY;
        } else {
            Log.e(TAG, "VPN establishment failed");
            return START_NOT_STICKY;
        }
    }
}

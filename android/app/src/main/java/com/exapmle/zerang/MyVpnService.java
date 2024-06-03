package com.example.yourapp;

import android.content.Intent;
import android.net.VpnService;
import android.os.ParcelFileDescriptor;

public class MyVpnService extends VpnService {

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Builder builder = new Builder();
        builder.addAddress("10.0.0.2", 24);  // Local VPN IP address within the 10.0.0.0/24 subnet
        builder.addRoute("0.0.0.0", 0);  // Route all traffic through VPN
        builder.addDnsServer("10.202.10.202");  // Primary DNS server address
        builder.addDnsServer("10.202.10.102");  // Secondary DNS server address

        ParcelFileDescriptor vpnInterface = builder.establish();
        if (vpnInterface != null) {
            // VPN successfully established
            return START_STICKY;
        } else {
            // VPN establishment failed
            return START_NOT_STICKY;
        }
    }
}

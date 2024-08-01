package com.example.bashgah

import android.app.PendingIntent
import android.content.Intent
import android.net.VpnService
import android.os.Build
import android.os.ParcelFileDescriptor
import android.util.Log

class DnsVpnService : VpnService() {
    private var vpnInterface: ParcelFileDescriptor? = null

    override fun onCreate() {
        super.onCreate()
        Log.d("DnsVpnService", "DNS VPN Service Created")

        val builder = Builder()
        builder.setSession("DNS VPN Service")
        builder.addAddress("10.0.0.2", 24) // Your VPN address
        builder.addDnsServer("10.202.10.202") // First DNS server
        builder.addDnsServer("10.202.10.102") // Second DNS server

        // Set up a pending intent for VPN configuration (if required)
        val intent = Intent(this, MainActivity::class.java)
        val pendingIntent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            PendingIntent.getActivity(this, 0, intent, PendingIntent.FLAG_IMMUTABLE)
        } else {
            PendingIntent.getActivity(this, 0, intent, PendingIntent.FLAG_UPDATE_CURRENT)
        }
        builder.setConfigureIntent(pendingIntent)

        vpnInterface = builder.establish()
        if (vpnInterface != null) {
            Log.d("DnsVpnService", "VPN Interface Established")
        } else {
            Log.e("DnsVpnService", "Failed to Establish VPN Interface")
        }
    }

    override fun onDestroy() {
        vpnInterface?.close()
        Log.d("DnsVpnService", "DNS VPN Service Destroyed")
        super.onDestroy()
    }
}

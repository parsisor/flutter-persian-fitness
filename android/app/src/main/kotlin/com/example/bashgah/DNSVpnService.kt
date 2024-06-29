package com.example.bashgah

import android.app.PendingIntent
import android.content.Intent
import android.net.VpnService
import android.os.ParcelFileDescriptor
import android.util.Log
import java.net.InetAddress

class DNSVpnService : VpnService() {
    private var vpnInterface: ParcelFileDescriptor? = null
    private val TAG = "DNSVpnService"

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val primaryDNS = intent?.getStringExtra("primaryDNS")
        val secondaryDNS = intent?.getStringExtra("secondaryDNS")
        if (primaryDNS != null && secondaryDNS != null) {
            setupVPN(primaryDNS, secondaryDNS)
        } else {
            Log.e(TAG, "Invalid DNS addresses: primaryDNS=$primaryDNS, secondaryDNS=$secondaryDNS")
        }
        return START_STICKY
    }

    private fun setupVPN(primaryDNS: String, secondaryDNS: String) {
        try {
            Log.i(TAG, "Setting up VPN with primaryDNS=$primaryDNS, secondaryDNS=$secondaryDNS")
            val builder = Builder()
            builder.setSession("DNS Changer")
            builder.addAddress("192.168.1.100", 24)
            builder.addDnsServer(primaryDNS)
            builder.addDnsServer(secondaryDNS)
            builder.addRoute("0.0.0.0", 0)
            vpnInterface = builder.establish()
            Log.i(TAG, "VPN established")
        } catch (e: Exception) {
            Log.e(TAG, "Error setting up VPN", e)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        vpnInterface?.close()
        Log.i(TAG, "VPN service destroyed")
    }
}

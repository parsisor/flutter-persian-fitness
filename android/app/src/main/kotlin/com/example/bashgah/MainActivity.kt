package com.example.bashgah

import android.content.Intent
import android.os.Bundle
import com.google.firebase.FirebaseApp
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "dns_changer"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        FirebaseApp.initializeApp(this)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "changeDNS") {
                val primaryDNS = call.argument<String>("primaryDNS")
                val secondaryDNS = call.argument<String>("secondaryDNS")
                if (primaryDNS != null && secondaryDNS != null) {
                    changeDNS(primaryDNS, secondaryDNS)
                    result.success(true)
                } else {
                    result.error("INVALID_ARGUMENTS", "Invalid DNS addresses", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun changeDNS(primaryDNS: String, secondaryDNS: String) {
        val intent = Intent(this, DNSVpnService::class.java)
        intent.putExtra("primaryDNS", primaryDNS)
        intent.putExtra("secondaryDNS", secondaryDNS)
        startService(intent)
    }
}

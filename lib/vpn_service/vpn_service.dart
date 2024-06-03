import 'package:flutter/services.dart';

class VPNService {
  static const MethodChannel _channel = MethodChannel('com.example.vpn/vpn');

  static Future<void> startVPN() async {
    try {
      await _channel.invokeMethod('startVPN');
    } on PlatformException catch (e) {
      print("Failed to start VPN: '${e.message}'.");
    }
  }
}
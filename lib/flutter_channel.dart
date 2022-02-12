
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterChannel {
  static const MethodChannel _channel = MethodChannel('flutter_channel');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

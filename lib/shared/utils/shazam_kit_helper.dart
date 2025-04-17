import 'package:flutter/services.dart';

class ShazamKitHelper {
  static const _channel = MethodChannel('shazamkit_channel');

  static Future<String> startRecognition() async {
    final result = await _channel.invokeMethod('startRecognition');
    return result as String;
  }
}

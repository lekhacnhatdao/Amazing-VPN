import 'package:flutter/foundation.dart';

class Utils {
  Utils._();

  static const B = 1;
  static const kB = B * 1024;
  static const mB = kB * 1024;
  static const gB = mB * 1024;

  static void log(String tag, Object? message) {
    if (kDebugMode) {
      print('[$tag] $message');
    }
  }

  static String convertBytesToString(int bytes) {
    if (bytes < kB) {
      return '$bytes B';
    } else if (bytes < mB) {
      final string = (bytes / kB).toStringAsFixed(2);
      return '$string KB';
    } else if (bytes < gB) {
      final string = (bytes / mB).toStringAsFixed(2);
      return '$string MB';
    } else {
      final string = (bytes / gB).toStringAsFixed(2);
      return '$string GB';
    }
  }
}

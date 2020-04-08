import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarColor {
  static void customColor(Color color) {
    return color == Colors.white ? SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark) : SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }
}

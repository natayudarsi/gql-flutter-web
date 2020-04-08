import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ScreenConfig {
  static double actualHeight;
  static double actualWidth;
  static double heightMultiplier;
  static double widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  static double _blockWidth = 0;
  static double _blockHeight = 0;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      actualWidth = constraints.maxWidth;
      actualHeight = constraints.maxHeight;
      isPortrait = true;
      if (actualWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      actualWidth = constraints.maxHeight;
      actualHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = actualWidth / 100;
    _blockHeight = actualHeight / 100;

    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
  }
}
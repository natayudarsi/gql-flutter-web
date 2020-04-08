import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:reverse_test/common/config/screen_config.dart';
// import 'package:reverse_test/common/themes/color_pallete.dart';

class PxText {
  static final TextStyle titleBar = TextStyle(
    color: Colors.black,
    fontFamily: 'TTCommons',
    fontSize: 2.5 * ScreenConfig.heightMultiplier,
  );

  static final TextStyle body14 = TextStyle(
    color: Colors.black,
    fontFamily: 'TTCommons',
    fontSize: 1.9 * ScreenConfig.heightMultiplier,
  );

  static final TextStyle digiSign40 = TextStyle(
    fontSize: 4.3 * ScreenConfig.heightMultiplier,
  );

  static final TextStyle lableStyle12 = body14.copyWith(
    fontSize: 2 * ScreenConfig.heightMultiplier,
  );
}

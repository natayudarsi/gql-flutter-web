import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:reverse_test/common/config/screen_config.dart';
import 'package:reverse_test/common/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reverse_test/common/themes/color_pallete.dart';
import 'package:reverse_test/common/themes/px_text.dart';
import 'package:reverse_test/presentation/screens/register_splash/splash_keys.dart';
import 'package:reverse_test/presentation/screens/register_splash/splash_string.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _heightFactor = ScreenConfig.heightMultiplier;
  double _widthFactor = ScreenConfig.widthMultiplier;
  Timer _timer;

  @override
  void initState() {
    super.initState();

    if (mounted) {
      _timer = Timer(Duration(milliseconds: 5000), () {
        Navigator.of(context).pushReplacementNamed(Routes.registerScreen);
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }


  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(SplashString.imagePxLogo), context);
    precacheImage(AssetImage(SplashString.imageRegisterSplash), context);
    return Scaffold(
      backgroundColor: ColorPallete.yellowSplashColor,
      body: Center(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              height: ScreenConfig.actualHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  SplashString.imagePxLogo,
                  key: SplashKeys.pxLogKey,
                  height: 9.9 * _heightFactor,
                  width: 29 * _widthFactor,
                ),
                SizedBox(
                  height: 2.9 * _heightFactor,
                ),
                Text(
                  SplashString.textLetsMake,
                  key: SplashKeys.letsKey,
                  style:
                      GoogleFonts.poppins(textStyle: PxText.digiSign40
                          ),
                ),
                Text(
                  SplashString.textDigitalSign,
                  key: SplashKeys.digisignKey,
                  style: GoogleFonts.poppins(
                      textStyle: PxText.digiSign40.copyWith(fontWeight: FontWeight.w800)),
                ),
                SizedBox(
                  height: 3.5 * _heightFactor,
                ),
                Image.asset(
                  SplashString.imageRegisterSplash,
                  key: SplashKeys.imageSplashKey,
                  height: 48.3 * ScreenConfig.heightMultiplier,
                  width: 72.8 * ScreenConfig.widthMultiplier,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

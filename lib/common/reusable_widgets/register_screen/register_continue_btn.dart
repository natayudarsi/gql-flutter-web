import 'package:flutter/material.dart';
import 'package:reverse_test/common/config/screen_config.dart';
import 'package:reverse_test/common/themes/color_pallete.dart';
import 'package:reverse_test/common/themes/px_text.dart';
import 'package:reverse_test/presentation/screens/register/register_strings.dart';

class RegisterContinueButton extends StatelessWidget {
  final GestureTapCallback onPressed;

  const RegisterContinueButton({Key key, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 84 * ScreenConfig.widthMultiplier,
      height: 5 * ScreenConfig.heightMultiplier,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: FlatButton(
        disabledColor: ColorPallete.greyedButton,
        color: ColorPallete.barneyPurple,
        onPressed: onPressed,
        child: Text(
          RegisterStrings.continueScene,
          style: PxText.body14.copyWith(
            color: Color.fromRGBO(204, 206, 211, 0.76),
          ),
        ),
      ),
    );
  }
}

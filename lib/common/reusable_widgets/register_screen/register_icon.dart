import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reverse_test/common/config/screen_config.dart';
import 'package:reverse_test/common/themes/px_text.dart';


class RegisterIcon extends StatelessWidget{
  final GestureTapCallback onTap;
  final String iconPath, text;
  final Color color;

  RegisterIcon({Key key, @required this.iconPath, this.onTap, this.text, this.color});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: SvgPicture.asset(
           iconPath,
            width: 13 * ScreenConfig.widthMultiplier,
            height: 6.1 * ScreenConfig.heightMultiplier,
            fit: BoxFit.contain,
          ),
          onTap: onTap,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 1.2 * ScreenConfig.heightMultiplier,
          ),
          child: Text(
           text,
            style: PxText.body14.copyWith(
              fontSize: 1.1 * ScreenConfig.heightMultiplier,
              color: color
            ),
          ),
        ),
      ],
    );
  }
  
}
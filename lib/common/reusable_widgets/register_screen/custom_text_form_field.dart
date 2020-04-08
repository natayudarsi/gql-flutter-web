import 'package:flutter/material.dart';
import 'package:reverse_test/common/config/screen_config.dart';
import 'package:reverse_test/common/themes/color_pallete.dart';
import 'package:reverse_test/common/themes/px_text.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final FocusNode node;
  final double height;
  final double width;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  final double marginTop;
  final double paddingTop;
  final double paddingLeft;
  final double paddingRight;
  final double paddingBottom;
  final Color fillColor;
  final Widget child;
  final bool enabled;

  CustomTextField({
    Key key,
    @required this.labelText,
    @required this.controller,
    @required this.node,
    this.hintText,
    this.height,
    this.marginLeft,
    this.marginRight,
    this.marginBottom,
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.paddingTop,
    this.width,
    this.marginTop,
    this.fillColor,
    this.child,
    this.enabled,
  });

  @override
  State<StatefulWidget> createState() {
    return _CustomTextField(
      this.key,
      this.labelText,
      this.controller,
      this.child,
      this.node,
      this.height,
      this.hintText,
      this.marginLeft,
      this.marginRight,
      this.marginBottom,
      this.paddingLeft,
      this.paddingRight,
      this.paddingBottom,
      this.paddingTop,
      this.width,
      this.marginTop,
      this.fillColor,
      this.enabled,
    );
  }
}

class _CustomTextField extends State<CustomTextField> {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final FocusNode node;
  final double height;
  final double width;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  final double marginTop;
  final double paddingTop;
  final double paddingLeft;
  final double paddingRight;
  final double paddingBottom;
  final Color fillColor;
  final Widget child;
  final bool enabled;

  _CustomTextField(
    Key key,
    this.labelText,
    this.controller,
    this.child,
    this.node,
    this.height,
    this.hintText,
    this.marginLeft,
    this.marginRight,
    this.marginBottom,
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.paddingTop,
    this.width,
    this.marginTop,
    this.fillColor,
    this.enabled,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height != null ? height : 4.5 * ScreenConfig.heightMultiplier,
        width: width != null ? width : 84 * ScreenConfig.widthMultiplier,
        padding: customPadding(),
        margin: customMargin(),
        child: TextFormField(
          enabled: enabled,
          style: PxText.body14.copyWith(
            color: node.hasFocus
                ? ColorPallete.barneyPurple
                : ColorPallete.greyedBorder,
          ),
          controller: controller,
          focusNode: node,
          cursorColor: ColorPallete.barneyPurple,
          decoration: InputDecoration(
            filled: true,
            fillColor: enabled == true || enabled == null
                ? Colors.white
                : ColorPallete.greyedButton,
            labelText: labelText,
            labelStyle: PxText.lableStyle12.copyWith(
                color: node.hasFocus
                    ? ColorPallete.barneyPurple
                    : ColorPallete.greyedBorder),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorPallete.barneyPurple),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorPallete.greyedBorder),
            ),
          ),
        ),
      ),
    );
  }

  EdgeInsets customPadding() {
    return EdgeInsets.only(
      top: paddingTop != null ? paddingTop : 0,
      bottom: paddingBottom != null ? paddingBottom : 0,
      right: paddingRight != null ? paddingRight : 0,
      left: paddingLeft != null ? paddingLeft : 0,
    );
  }

  EdgeInsets customMargin() {
    return EdgeInsets.only(
      top: marginTop != null ? marginTop : 0,
      bottom: marginBottom != null ? marginBottom : 0,
      right: marginRight != null ? marginRight : 0,
      left: marginLeft != null ? marginLeft : 0,
    );
  }
}

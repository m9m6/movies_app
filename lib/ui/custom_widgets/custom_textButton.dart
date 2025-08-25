import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  String text;
  TextStyle? textStyle;
  VoidCallback onPressed;

  CustomTextButton(
      {super.key, required this.text, this.textStyle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ?? AppStyles.bold24Yellow,
        ));
  }
}

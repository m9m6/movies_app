import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomTextFormField extends StatefulWidget {
  Widget prefixIcon;
  bool isPassword;
  String hintText;
  TextEditingController ?controller = TextEditingController();
  CustomTextFormField({
    super.key,
     this.controller,
    required this.prefixIcon,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: widget.controller,
      style: AppStyles.regular16White,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightBlackColor,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                icon: obscureText
                    ? Icon(Icons.visibility_off, color: AppColors.whiteColor)
                    : Icon(Icons.visibility),
                color: AppColors.whiteColor,
              )
            : null,
        hintText: widget.hintText,
        hintStyle: AppStyles.regular16White,
        border: builtDecorationBorder(borderSideColor: Colors.transparent),
        focusedBorder: builtDecorationBorder(
          borderSideColor: AppColors.whiteColor,
        ),
      ),
    );
  }

  OutlineInputBorder builtDecorationBorder({required Color borderSideColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: borderSideColor),
    );
  }
}

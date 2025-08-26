import 'package:flutter/material.dart';
import 'package:movies/utils/app_colors.dart';
import 'package:movies/utils/app_styles.dart';

class CustomInputField extends StatelessWidget {
  //0//
  final String? iconPath;
  final IconData? iconData;
  final String hint;
  final bool isPassword;
  final bool isIconAsset;

  const CustomInputField({
    super.key,
    this.iconPath,
    this.iconData,
    required this.hint,
    this.isPassword = false,
    this.isIconAsset = true,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return TextFormField(
      obscureText: isPassword,
      style: AppStyles.regular16White,
      decoration: InputDecoration(
        prefixIcon: isIconAsset
            ? Padding(
          padding: EdgeInsets.all(width * 0.03),
          child: Image.asset(
            iconPath!,
            width: width * 0.05,
            color: AppColors.whiteColor,
          ),
        )
            : Icon(
          iconData,
          color: AppColors.whiteColor,
          size: width * 0.06,
        ),
        hintText: hint,
        hintStyle: AppStyles.regular12White,
        filled: true,
        fillColor: AppColors.lightBlackColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(width * 0.02),
          borderSide: BorderSide.none,
        ),
        suffixIcon: isPassword
            ? Icon(
          Icons.visibility_off,
          color: AppColors.whiteColor.withOpacity(0.7),
          size: width * 0.05,
        )
            : null,
      ),
    );
  }
}

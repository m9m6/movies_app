import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool hasIcon;
  final String? iconAsset;
  final double? widthButton;
  final double? heightButton;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double borderRadius;
  final Color? borderColor;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.hasIcon = false,
    this.iconAsset,
    this.widthButton,
    this.heightButton,
    this.backgroundColor,
    this.foregroundColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.borderRadius = 15,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double height = mediaQuery.size.height;
    final double width = mediaQuery.size.width;
    final Color resolvedTextColor = textColor ?? AppColors.darkBlackColor;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.yellowColor,
        foregroundColor: foregroundColor ?? AppColors.darkBlackColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: borderColor != null
              ? BorderSide(color: borderColor!, width: 2.0)
              : BorderSide.none,
        ),
        minimumSize:
            Size(widthButton ?? double.infinity, heightButton ?? height * 0.08),
      ),
      onPressed: onPressed,
      child: hasIcon
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(iconAsset!),
                SizedBox(width: width * 0.02),
                Text(
                  text,
                  style: GoogleFonts.roboto(
                    fontSize: fontSize ?? 20,
                    color: resolvedTextColor,
                    fontWeight: fontWeight ?? FontWeight.w400,
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: GoogleFonts.roboto(
                fontSize: fontSize ?? 20,
                color: resolvedTextColor,
                fontWeight: fontWeight ?? FontWeight.w400,
              ),
            ),
    );
  }
}

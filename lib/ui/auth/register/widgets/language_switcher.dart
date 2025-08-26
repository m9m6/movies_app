import 'package:flutter/material.dart';
import 'package:movies/utils/app_colors.dart';
import 'package:movies/utils/assets_manager.dart';

class LanguageSwitcher extends StatelessWidget {
  //0//
  final String selectedLang; // "en" أو "ar"
  final Function(String) onLanguageChanged;

  const LanguageSwitcher({
    super.key,
    required this.selectedLang,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Container(
      width: width * 0.17,
      height: height * 0.05,
      decoration: BoxDecoration(
        color: AppColors.yellowColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => onLanguageChanged("en"),
            child: CircleAvatar(
              radius: width * 0.08 / 2,
              backgroundColor: selectedLang == "en"
                  ? AppColors.whiteColor
                  : AppColors.noColor,
              child: ClipOval(
                child: Image.asset(
                  AssetsManager.us,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onLanguageChanged("ar"),
            child: CircleAvatar(
              radius: width * 0.08 / 2,
              backgroundColor: selectedLang == "ar"
                  ? AppColors.whiteColor
                  : AppColors.noColor,
              child: ClipOval(
                child: Image.asset(
                  AssetsManager.eg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

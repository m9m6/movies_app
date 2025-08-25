import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_styles.dart';


class AppThemes {
  static final ThemeData darkTheme =
  ThemeData(
    primaryColor: AppColors.darkBlackColor,
    indicatorColor: AppColors.whiteColor,
    scaffoldBackgroundColor: AppColors.darkBlackColor,
    appBarTheme: const AppBarTheme(
    ),
    textTheme: TextTheme(
    ),
  );
}

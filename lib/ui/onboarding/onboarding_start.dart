import 'package:flutter/material.dart';
import 'package:movies/utils/app_colors.dart';
import 'package:movies/utils/app_routes.dart';
import 'package:movies/utils/assets_manager.dart';
import '../../utils/app_styles.dart';
import '../custom_widgets/custom_elevatedButton.dart';
import 'custom_bottom_sheet.dart';
import 'gradient_overlay_screen_flexible.dart';

class OnboardingStart extends StatefulWidget {
  static const String onBoarding = 'onboarding_start';

  const OnboardingStart({super.key});

  @override
  State<OnboardingStart> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnboardingStart> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _goToNext() {
    if (_currentPage < 4) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      //TODO:Add the screen here so we can navigate
      Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
    }
  }

  void _goToPrevious() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  Widget _buildButton({
    required VoidCallback onPressed,
    required String text,
    required Color backgroundColor,
    bool expanded = true,
    double? fontSize,
    FontWeight? fontWeight,
    double? heightButton,
    EdgeInsets? padding,
    Color? borderColor,
    Color? textColor,
  }) {
    final button = CustomElevatedButton(
      widthButton: double.infinity,
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      textColor: textColor,
      text: text,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontSize: fontSize ?? 20,
      heightButton: heightButton ?? 55,
    );

    if (expanded) {
      return Expanded(
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 8.0),
          child: button,
        ),
      );
    } else {
      return Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 5.0),
        child: button,
      );
    }
  }

  //========================== OnBoarding 1 ==========================
  Widget _buildPage1() {
    return GradientOverlayScreenFlexible(
      imageAsset: AssetsManager.moviesPostersGroup2,
      color1: 0x00084250,
      color2: 0xff084250,
      contentPadding: EdgeInsets.zero,
      children: [
        CustomBottomSheet(
          height: 260,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    'Discover Movies',
                    style: AppStyles.inter24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
                    style: AppStyles.inter20White,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              _buildButton(
                backgroundColor: AppColors.yellowColor,
                onPressed: _goToNext,
                text: 'Next',
                expanded: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  //========================== OnBoarding 2 ==========================
  Widget _buildPage2() {
    return GradientOverlayScreenFlexible(
      imageAsset: AssetsManager.moviesPostersGroup3,
      color1: 0x0085210E,
      color2: 0xff85210E,
      contentPadding: EdgeInsets.zero,
      children: [
        CustomBottomSheet(
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Explore All Genres',
                    style: AppStyles.inter24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
                    style: AppStyles.inter20White,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              _buildButton(
                backgroundColor: AppColors.yellowColor,
                onPressed: _goToNext,
                text: 'Next',
                expanded: false,
              ),
              SizedBox(height: 16),
              _buildButton(
                backgroundColor: AppColors.noColor,
                borderColor: AppColors.yellowColor,
                textColor: AppColors.yellowColor,
                onPressed: _goToPrevious,
                text: 'Back',
                expanded: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  //========================== OnBoarding 3 ==========================
  Widget _buildPage3() {
    return GradientOverlayScreenFlexible(
      imageAsset: AssetsManager.moviesPostersGroup4,
      color1: 0x004C2471,
      color2: 0xff4C2471,
      contentPadding: EdgeInsets.zero,
      children: [
        CustomBottomSheet(
          height: 343,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Create Watchlists',
                    style: AppStyles.inter24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.',
                    style: AppStyles.inter20White,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              _buildButton(
                backgroundColor: AppColors.yellowColor,
                onPressed: _goToNext,
                text: 'Next',
                expanded: false,
              ),
              SizedBox(height: 8),
              _buildButton(
                backgroundColor: AppColors.noColor,
                borderColor: AppColors.yellowColor,
                textColor: AppColors.yellowColor,
                onPressed: _goToPrevious,
                text: 'Back',
                expanded: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  //========================== OnBoarding 4 ==========================
  Widget _buildPage4() {
    return GradientOverlayScreenFlexible(
      imageAsset: AssetsManager.moviesPostersGroup5,
      color1: 0x00601321,
      color2: 0xff601321,
      contentPadding: EdgeInsets.zero,
      children: [
        CustomBottomSheet(
          height: 343,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Rate, Review, and Learn',
                    style: AppStyles.inter24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Share your thoughts on the movies you"ve watched. Dive deep into film details and help others discover great movies with your reviews.',
                    style: AppStyles.inter20White,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              _buildButton(
                backgroundColor: AppColors.yellowColor,
                onPressed: _goToNext,
                text: 'Next',
                expanded: false,
              ),
              SizedBox(height: 8),
              _buildButton(
                backgroundColor: AppColors.noColor,
                borderColor: AppColors.yellowColor,
                textColor: AppColors.yellowColor,
                onPressed: _goToPrevious,
                text: 'Back',
                expanded: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  //========================== OnBoarding 5 ==========================
  Widget _buildPage5() {
    return GradientOverlayScreenFlexible(
      imageAsset: AssetsManager.moviesPostersGroup6,
      color1: 0x002A2C30,
      color2: 0xff2A2C30,
      contentPadding: EdgeInsets.zero,
      children: [
        CustomBottomSheet(
          height: 233,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Start Watching Now',
                    style: AppStyles.inter24White,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 27),
                ],
              ),
              _buildButton(
                backgroundColor: AppColors.yellowColor,
                onPressed: _goToNext,
                text: 'Finish',
                expanded: false,
              ),
              SizedBox(height: 8),
              _buildButton(
                backgroundColor: AppColors.noColor,
                borderColor: AppColors.yellowColor,
                textColor: AppColors.yellowColor,
                onPressed: _goToPrevious,
                text: 'Back',
                expanded: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
          _buildPage1(),
          _buildPage2(),
          _buildPage3(),
          _buildPage4(),
          _buildPage5(),
        ],
      ),
    );
  }
}
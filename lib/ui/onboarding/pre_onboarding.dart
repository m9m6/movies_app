import 'package:flutter/material.dart';
import 'package:movies/ui/custom_widgets/custom_elevatedButton.dart';
import '../../utils/app_styles.dart';
import '../../utils/assets_manager.dart';
import 'gradient_overlay_screen_flexible.dart';
import 'onboarding_start.dart';

class PreOnboardingScreen extends StatelessWidget {
  static const String preBoarding = 'pre_onboarding';

  const PreOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientOverlayScreenFlexible(
      imageAsset: AssetsManager.moviesPostersGroup1,
      color1: 0x003C3C3C,
      color2: 0x80121312,
      color3: 0xE8121312,
      color4: 0xFF121312,
      children: [
        Text(
          'Find Your Next',
          style: AppStyles.large36White,
        ),
        Text(
          'Favorite Movie Here',
          style: AppStyles.large36White,
        ),
        SizedBox(height: 16),
        Text(
          'Get access to a huge library of movies to suit all tastes. You will surely like it.',
          style: AppStyles.regular20White
              .copyWith(color: Colors.white.withOpacity(0.6)),
        ),
        SizedBox(height: 24),
        CustomElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, OnboardingStart.onBoarding);
          },
          text: 'Explore Now',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          heightButton: 55,
        ),
      ],
    );
  }
}




//==================== Old Code ==========================
// body: Stack(
//   children: [
//     Expanded(
//       child: Image.asset(
//         AssetsManager.moviesPostersGroup1,
//         fit: BoxFit.fill,
//         width: double.infinity,
//         height: double.infinity,
//       ),
//     ),
//     Expanded(
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Color(0x003C3C3C),
//               Color(0x80121312),
//               Color(0xE8121312),
//               Color(0xFF121312),
//             ],
//             stops: [0.0, 0.39, 0.675, 1.0],
//           ),
//         ),
//       ),
//     ),
//     Padding(
//       padding: EdgeInsets.only(left: 16, right: 16, bottom: 33),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Find Your Next',
//             style: AppStyles.large36White,
//           ),
//           Text(
//             'Favorite Movie Here',
//             style: AppStyles.large36White,
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Text(
//             'Get access to a huge library of movies to suit all tastes. You will surely like it.',
//             style: AppStyles.regular20White
//                 .copyWith(color: Colors.white.withOpacity(0.6)),
//           ),
//           SizedBox(
//             height: 24,
//           ),
//           CustomElevatedButton(
//             onPressed: () {
//               Navigator.pushReplacementNamed(
//                   context, OnboardingStart.onBoarding);
//             },
//             text: 'Explore Now',
//             fontWeight: FontWeight.w600,
//             fontSize: 20,
//             heightButton: 55,
//           ),
//         ],
//       ),
//     ),
//   ],
// ),

import 'package:flutter/material.dart';

class GradientOverlayScreenFlexible extends StatelessWidget {
  final String imageAsset;
  final List<Widget> children;
  final EdgeInsets contentPadding;
  final int color1;
  final int color2;
  final int? color3;
  final int? color4;

  const GradientOverlayScreenFlexible({
    super.key,
    required this.imageAsset,
    required this.children,
    this.contentPadding = const EdgeInsets.only(left: 16, right: 16, bottom: 33),
    required this.color1,
    required this.color2,
    this.color3,
    this.color4,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> gradientColors;
    final List<double> gradientStops;

    if (color3 != null && color4 != null) {
      gradientColors = [
        Color(color1),
        Color(color2),
        Color(color3!),
        Color(color4!),
      ];
      gradientStops =  [0.0, 0.39, 0.675, 1.0];
    } else {
      gradientColors = [
        Color(color1),
        Color(color2),
      ];
      gradientStops =  [0.0, 1.0];
    }

    return Scaffold(
      body: Stack(
        children: [
          //============ BG Image ============
          Image.asset(
            imageAsset,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          //============ Gradient Colors ============
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradientColors,
                stops: gradientStops,
              ),
            ),
          ),

          //============ Content in the bottom ============
          Padding(
            padding: contentPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}



//============ Old code before editing color gradiant 3,4 optional ============
// import 'package:flutter/material.dart';
//
// class GradientOverlayScreenFlexible extends StatelessWidget {
//   final String imageAsset;
//   final List<Widget> children;
//   final EdgeInsets contentPadding;
//   final int color1;
//   final int color2;
//   final int? color3;
//   final int? color4;
//
//   const GradientOverlayScreenFlexible({
//     super.key,
//     required this.imageAsset,
//     required this.children,
//     this.contentPadding = const EdgeInsets.only(left: 16, right: 16, bottom: 33),
//     required this.color1,
//     required this.color2,
//     this.color3,
//     this.color4,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           //============ BG Image ============
//           Image.asset(
//             imageAsset,
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//
//           //============ Gradient Colors ============
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color(color1),
//                   Color(color2),
//                   Color(color3!),
//                   Color(color4!),
//                 ],
//               ),
//             ),
//           ),
//
//           //============ Content in the bottom ============
//           Padding(
//             padding: contentPadding,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: children,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
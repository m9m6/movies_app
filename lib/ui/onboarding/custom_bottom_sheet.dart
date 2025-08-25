import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  final double height;
  final Widget child;
  final Color? backgroundColor;
  final double borderRadius;
  final bool showDragHandle;
  final Color dragHandleColor;

  const CustomBottomSheet({
    super.key,
    required this.height,
    required this.child,
    this.backgroundColor,
    this.borderRadius = 40,
    this.showDragHandle = true,
    this.dragHandleColor = AppColors.lightBlackColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.only(top: 27,left: 16,right: 16,bottom: 20),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.darkBlackColor, //main color of it
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(borderRadius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showDragHandle)
            Center(
              child: Container(
                width: 40,
                height: 4,
                ),
              ),
          Expanded(child: SingleChildScrollView(child: child)),
        ],
      ),
    );
  }
}
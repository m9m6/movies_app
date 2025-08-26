import 'package:flutter/material.dart';
import 'package:movies/utils/app_colors.dart';
import 'package:movies/utils/assets_manager.dart';

class AvatarSelector extends StatelessWidget {
  //0//
  final int selectedAvatar;
  final Function(int) onAvatarSelected;

  const AvatarSelector({
    super.key,
    required this.selectedAvatar,
    required this.onAvatarSelected,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    List<String> avatars = [
      AssetsManager.avatar3,
      AssetsManager.avatar1,
      AssetsManager.avatar2,
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        avatars.length,
            (index) {
          final bool isSelected = selectedAvatar == index;
          return GestureDetector(
            onTap: () => onAvatarSelected(index),
            child: CircleAvatar(
              radius: isSelected ? width * 0.11 : width * 0.08,
              backgroundColor: isSelected
                  ? AppColors.yellowColor
                  : AppColors.noColor,
              child: CircleAvatar(
                radius: isSelected ? width * 0.095 : width * 0.075,
                backgroundImage: AssetImage(avatars[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

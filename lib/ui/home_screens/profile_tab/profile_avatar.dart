import 'package:flutter/material.dart';
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key,required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(
        imageUrl ?? 'assets/images/default_avatar.png',
      ),
    );
  }
}
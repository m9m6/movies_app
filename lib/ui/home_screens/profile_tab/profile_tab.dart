import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/utils/assets_manager.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../custom_widgets/custom_elevatedButton.dart';
import '../../update_profile/cubit/profile_cubit.dart';
import '../../update_profile/profile_screen.dart';
import '../../update_profile/widgets/edit_account.dart';
import '../../update_profile/widgets/history_list.dart';
import '../../update_profile/widgets/profile_avatar.dart';

class ProfileTab extends StatelessWidget {
  static const String profileTab = 'Profile_tab';
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.06),
            child: Column(
              spacing: MediaQuery.sizeOf(context).height * 0.02,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 5,
                        children: [
                          ProfileAvatar(imageUrl:AssetsManager.profile1),
                          FittedBox(
                            child: Text(
                              'User name',
                              style: AppStyles.regular24White,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 10,
                        children: [
                          Text('12', style: AppStyles.regular24White),
                          Text('WishList', style: AppStyles.regular24White),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 10,
                        children: [
                          Text('10', style: AppStyles.regular24White),
                          Text('History', style: AppStyles.regular24White),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 5,
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomElevatedButton(
                        backgroundColor: AppColors.yellowColor,
                        textColor: AppColors.whiteColor,
                        text: "Edit Profile",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => ProfileCubit(),
                                child: EditAccount(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        backgroundColor: AppColors.redColor,
                        textColor: AppColors.whiteColor,
                        text: "Logout",
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                TabBar(
                  tabs: [
                    Tab(
                      text: 'Watch List',
                      icon: Icon(Icons.list, color: AppColors.yellowColor),
                    ),
                    Tab(
                      text: 'History',
                      icon: Icon(Icons.folder, color: AppColors.yellowColor),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: Image.asset(AssetsManager.profile2)),
                      HistoryList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

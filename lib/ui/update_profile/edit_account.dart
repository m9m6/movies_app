import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../UI/custom_widgets/custom_elevatedButton.dart';
import '../../UI/custom_widgets/custom_textFormFeild.dart';
import '../home_screens/profile_tab/logic/profile_cubit.dart';
import '../home_screens/profile_tab/profile_avatar.dart';
import '../home_screens/profile_tab/widgets/avatar_sheet.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({super.key});
  @override
  State<EditAccount> createState() => _EditAccountState();
}
class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pick Avatar', style: AppStyles.bold24Yellow),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                spacing: 10,
                children: [
                  ProfileAvatar(imageUrl: 'assets/images/avatar1.png'),
                  CustomTextFormField(
                    controller: context
                        .read<ProfileCubit>()
                        .nameController, prefixIcon: Icon(Icons.person), hintText: 'John Safwat',
                  ),
                  CustomTextFormField(
                    hintText: '01200000000',
                    prefixIcon: Icon(Icons.call),
                    controller: context
                        .read<ProfileCubit>()
                        .phoneController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Reset Password',
                        style: AppStyles.regular16White,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(MediaQuery
            .sizeOf(context)
            .width * 0.05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            CustomElevatedButton(
              textColor: AppColors.whiteColor,
              text: 'Delete Account',
              backgroundColor: AppColors.redColor,
              onPressed: () {},
            ),
            CustomElevatedButton(
              textColor: AppColors.darkBlackColor,
              text: 'Update Data',
              backgroundColor: AppColors.yellowColor,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  scrollControlDisabledMaxHeightRatio: 0.45,
                  builder: (context) {
                    return AvatarSheet();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
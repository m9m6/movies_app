import 'package:flutter/material.dart';
import 'package:movies/utils/app_styles.dart';
import 'package:movies/utils/assets_manager.dart';

import '../../../utils/app_colors.dart';

class ForgetPasswordPage extends StatelessWidget {
  //0//
  static const String forgetPasswordPage = 'forget_password_page';

  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: AppColors.darkBlackColor,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlackColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.yellowColor,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'login_screen');
          },
        ),
        title: Text(
          "Forget Password",
          style: AppStyles.regular16Yellow,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),

            Image.asset(
              AssetsManager.forget,
              fit: BoxFit.contain,
            ),

            SizedBox(height: height * 0.05),

            TextFormField(
              style: AppStyles.regular12White,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(width * 0.03),
                  child: Image.asset(
                    AssetsManager.iconEmail,
                    color: AppColors.whiteColor, // من AppColors
                  ),
                ),
                hintText: "Email",
                hintStyle: AppStyles.regular12White,
                filled: true,
                fillColor: AppColors.lightBlackColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  borderSide: BorderSide.none,
                ),
              ),
            ),


            SizedBox(height: height * 0.03),

            // زر التحقق من الإيميل
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.yellowColor,
                foregroundColor: AppColors.darkBlackColor,
                minimumSize: Size(double.infinity, height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                ),
              ),
              onPressed: () {
                // TODO: add verify email logic
              },
              child: Text(
                "Verify Email",
                style: AppStyles.regular20Black,
              ),

            ),
          ],
        ),
      ),
    );
  }
}

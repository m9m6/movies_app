//import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:movies/UI/custom_widgets/custom_elevatedButton.dart';
import 'package:movies/UI/custom_widgets/custom_textButton.dart';
import 'package:movies/UI/custom_widgets/custom_textFormFeild.dart';
import 'package:movies/utils/app_routes.dart';
import 'package:movies/utils/assets_manager.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';


class LoginScreen extends StatefulWidget {
  static const String loginScreen = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool isEnglish = true;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.darkBlackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(AssetsManager.loginImage),
              SizedBox(height: height * 0.07),
              CustomTextFormField(
                prefixIcon: Image.asset(AssetsManager.emailIcon),
                hintText: 'Email',
              ),
              SizedBox(height: height * 0.03),
              CustomTextFormField(
                isPassword: true,
                prefixIcon: Image.asset(AssetsManager.passwordIcon),
                hintText: 'Password',
              ),
              SizedBox(height: height * 0.01),
              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  onPressed: () {
                   Navigator.pushReplacementNamed(context, AppRoutes.forgetPasswordPage);
                  },
                  textStyle: AppStyles.regular12Yellow.copyWith(fontSize: 14),
                  text: 'Forget Password?',
                ),
              ),
              SizedBox(height: height * 0.01),
              CustomElevatedButton(onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
              }, text: 'Login'),
              SizedBox(height: height * 0.02),

              Row(
                mainAxisSize: MainAxisSize.min,
                //to make the row take only its size .
                children: [
                  Text('Don’t Have Account?', style: AppStyles.regular12Yellow.copyWith(fontSize: 14)),
                  CustomTextButton(onPressed: () {
                   Navigator.pushReplacementNamed(context, AppRoutes.registerPage);
                  }, text: 'Create One'),
                ],
              ),

              SizedBox(height: height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.yellowColor,
                      indent: width * 0.15,
                      endIndent: width * 0.02,
                    ),
                  ),
                  Text('OR', style: AppStyles.regular12Yellow.copyWith(fontSize: 14)),
                  Expanded(
                    child: Divider(
                      color: AppColors.yellowColor,
                      indent: width * 0.02,
                      endIndent: width * 0.15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              CustomElevatedButton(
                hasIcon: true,
                onPressed: () {},
                text: 'Login With Google',
                iconAsset: AssetsManager.googleIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

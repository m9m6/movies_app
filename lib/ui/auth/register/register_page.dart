import 'package:flutter/material.dart';
import 'package:movies/utils/app_colors.dart';
import 'package:movies/utils/app_styles.dart';
import 'package:movies/utils/assets_manager.dart';
import 'widgets/custom_input_field.dart';
import 'widgets/avatar_selector.dart';
import 'widgets/language_switcher.dart';

class RegisterPage extends StatefulWidget {
  //0//
  static const String registerPage = 'register_page';

  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int selectedAvatar = 1;
  String selectedLang = "en";

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
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.yellowColor,
            size: width * 0.06,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              'login_screen',
                  (Route<dynamic> route) => false,
            );
          },
        ),
        title: Text(
          "Register",
          style: AppStyles.regular20Yellow,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            // Avatar Selector
            AvatarSelector(
              selectedAvatar: selectedAvatar,
              onAvatarSelected: (index) {
                setState(() {
                  selectedAvatar = index;
                });
              },
            ),
            SizedBox(height: height * 0.03),

            // Name
            CustomInputField(
              iconPath: AssetsManager.iconName,
              hint: "Name",
            ),
            SizedBox(height: height * 0.015),

            // Email
            CustomInputField(
              iconPath: AssetsManager.iconEmail,
              hint: "Email",
            ),
            SizedBox(height: height * 0.015),

            // Password
            CustomInputField(
              iconPath: AssetsManager.iconPass,
              hint: "Password",
              isPassword: true,
            ),
            SizedBox(height: height * 0.015),

            // Confirm Password
            CustomInputField(
              iconPath: AssetsManager.iconConfirmPass,
              hint: "Confirm Password",
              isPassword: true,
            ),
            SizedBox(height: height * 0.015),

            // Phone
            CustomInputField(
              iconPath: AssetsManager.iconPhone,
              hint: "Phone Number",
            ),
            SizedBox(height: height * 0.03),

            // Create Account Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.yellowColor,
                foregroundColor: AppColors.darkBlackColor,
                minimumSize: Size(double.infinity, height * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * 0.02),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Create Account",
                style: AppStyles.regular20Black,
              ),
            ),
            SizedBox(height: height * 0.02),

            // Already have account? Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account ? ",
                  style: AppStyles.regular16White,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      'login_screen', // route name للـ LoginScreen
                          (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    "Login",
                    style: AppStyles.bold16Yellow,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),

            // Language Switcher
            LanguageSwitcher(
              selectedLang: selectedLang,
              onLanguageChanged: (lang) {
                setState(() {
                  selectedLang = lang;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

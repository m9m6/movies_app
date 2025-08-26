import 'package:flutter/material.dart';
import 'package:movies/ui/home_screens/profile_tab/profile_screen/profile_screen.dart';
import 'package:movies/utils/app_routes.dart';
import 'package:movies/utils/app_themes.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'package:movies/ui/auth/forget_password/forget_pass.dart';
import 'package:movies/ui/auth/login/login_screen.dart';
//import 'package:movies/ui/auth/register/register_page.dart';
import 'package:movies/ui/home_screens/home_screen.dart';
import 'package:movies/ui/home_screens/profile_tab/profile_tab.dart';
import 'package:movies/ui/onboarding/onboarding_start.dart';
import 'package:movies/ui/onboarding/pre_onboarding.dart';
void main() async {
  //============= Localization =============
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.preBoarding,
      routes: {
        AppRoutes.preBoarding:(context)=>PreOnboardingScreen(),
        AppRoutes.onBoarding:(context)=>OnboardingStart(),
        //AppRoutes.registerPage:(context)=>RegisterPage(),
        //AppRoutes.forgetPasswordPage:(context)=>ForgetPasswordPage(),
        AppRoutes.ProfileScreen:(context)=> ProfileScreen(),
        AppRoutes.profileTab:(context)=> ProfileTab(),
        AppRoutes.loginScreen:(context)=>LoginScreen(),
        AppRoutes.homeScreen:(context)=>HomeScreen(),
      },
      theme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

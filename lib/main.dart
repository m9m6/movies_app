import 'package:flutter/material.dart';
import 'package:movies/utils/app_routes.dart';
import 'package:movies/utils/app_themes.dart';
import 'package:easy_localization/easy_localization.dart';

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
      // initialRoute: AppRoutes.preBoarding,
      routes: {
        // AppRoutes.preBoarding:(context)=>PreOnboardingScreen(),
      },
      theme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

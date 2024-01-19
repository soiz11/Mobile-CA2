import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.backgroundBlack,
        statusBarColor: AppColors.backgroundBlack,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light),
  );

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBoarding();
  }
}

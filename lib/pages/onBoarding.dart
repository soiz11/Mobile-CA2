import 'package:Mobile_CA_2/assets/colors/colors.dart';
import 'package:Mobile_CA_2/components/custom_btn.dart';
import 'package:Mobile_CA_2/pages/home.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.backgroundGradient,
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Image.asset(
                "lib/assets/images/cup.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Coffee so good, your taste buds will love it.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.pureWhite,
                          fontSize: 31,
                          fontWeight: FontWeight.w700,
                          fontFamily: "regular"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The best grain, the finest roast, the powerful flavor.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.bodyTextGrey,
                          height: 1.5,
                          letterSpacing: 0.01,
                          fontSize: 16),
                    ),
                    SizedBox(height: 2),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBtn(
                  btnText: "Get Started",
                  widthFactor: 0.8,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  marginX: 0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
//this is comment